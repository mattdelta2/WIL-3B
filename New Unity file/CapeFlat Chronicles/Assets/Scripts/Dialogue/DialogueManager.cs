using UnityEngine;
using TMPro;
using UnityEngine.UI;
using System.Collections.Generic;
using System.Collections;

public class DialogueManager : MonoBehaviour
{
    public GameObject buttonPrefab; // Prefab for the choice button
    public Canvas canvas; // Reference to the Canvas in the scene to add UI to
    public Transform buttonContainer; // Reference to the ButtonContainer on the Canvas
    private GameObject dialoguePanel; // Dialogue panel that will be created dynamically
    private TextMeshProUGUI npcTextUI;
    private Line currentLine;
    private int currentLineIndex = 0;
    private List<Line> currentLines;
    public PlayerMovement playerMovement;
    public DialogueLoader dialogueLoader; // Reference to DialogueLoader

    public void StartDialogue(string dialogueTitle)
    {
        playerMovement.SetCanMove(false);
        CreateDialoguePanel(); // Dynamically create the panel

        Dialogue dialogue = dialogueLoader.GetDialogueByTitle(dialogueTitle);
        if (dialogue != null && dialogue.lines.Count > 0)
        {
            currentLines = dialogue.lines;
            currentLineIndex = 0;
            DisplayDialogue();
        }
    }

    void CreateDialoguePanel()
    {
        // Create a new GameObject for the panel
        dialoguePanel = new GameObject("DialoguePanel");
        dialoguePanel.transform.SetParent(canvas.transform, false);

        // Add and set RectTransform
        RectTransform panelRect = dialoguePanel.AddComponent<RectTransform>();
        panelRect.sizeDelta = new Vector2(600, 200);
        panelRect.anchoredPosition = new Vector2(0, -209); // Adjusted position to be above the buttons
        panelRect.anchorMin = new Vector2(0.5f, 0.5f);
        panelRect.anchorMax = new Vector2(0.5f, 0.5f);
        panelRect.pivot = new Vector2(0.5f, 0.5f);

        // Add an Image component for background visuals
        Image panelImage = dialoguePanel.AddComponent<Image>();
        panelImage.color = Color.black; // Set the color of your choice

        // Create a new TextMeshProUGUI for the dialogue text
        GameObject npcTextObject = new GameObject("NPCText");
        npcTextObject.transform.SetParent(dialoguePanel.transform, false);
        npcTextUI = npcTextObject.AddComponent<TextMeshProUGUI>();

        // Set RectTransform and properties for the text
        RectTransform textRect = npcTextObject.GetComponent<RectTransform>();
        textRect.sizeDelta = new Vector2(580, 100);
        textRect.anchoredPosition = new Vector2(0, 0);
        textRect.anchorMin = new Vector2(0.5f, 0.5f);
        textRect.anchorMax = new Vector2(0.5f, 0.5f);
        textRect.pivot = new Vector2(0.5f, 0.5f);
        npcTextUI.fontSize = 24;
        npcTextUI.color = Color.white;
        npcTextUI.alignment = TextAlignmentOptions.Center;
    }

    public void DisplayDialogue()
    {
        currentLine = currentLines[currentLineIndex];
        npcTextUI.text = currentLine.npc; // Display the NPC's text

        // Clear previous buttons safely
        if (buttonContainer != null)
        {
            for (int i = buttonContainer.childCount - 1; i >= 0; i--)
            {
                Transform child = buttonContainer.GetChild(i);
                if (child != null)
                {
                    Destroy(child.gameObject);
                }
            }
        }

        // Create new buttons for current options
        for (int i = 0; i < currentLine.options.Count; i++)
        {
            GameObject newButton = Instantiate(buttonPrefab, buttonContainer);
            RectTransform buttonRect = newButton.GetComponent<RectTransform>();
            buttonRect.localScale = Vector3.one;

            // Set button properties to ensure text fits properly
            LayoutElement layoutElement = newButton.GetComponent<LayoutElement>();
            if (layoutElement == null)
            {
                layoutElement = newButton.AddComponent<LayoutElement>();
            }

            layoutElement.minHeight = 60;  // Adjust the height as needed
            layoutElement.preferredHeight = 60;

            // Set the button text
            TextMeshProUGUI buttonText = newButton.GetComponentInChildren<TextMeshProUGUI>();
            buttonText.text = currentLine.options[i].player;
            buttonText.fontSize = 26; // Adjust font size for readability
            buttonText.color = Color.white; // Set button text color to white

            // Set the button background color to black
            Image buttonImage = newButton.GetComponent<Image>();
            if (buttonImage != null)
            {
                buttonImage.color = Color.black;
            }

            // Adjust button width based on the text length to avoid truncation
            float textWidth = buttonText.preferredWidth;
            buttonRect.sizeDelta = new Vector2(Mathf.Max(200, textWidth + 20), buttonRect.sizeDelta.y);

            // Set up the button's onClick event
            Button buttonComponent = newButton.GetComponent<Button>();
            int choiceIndex = i; // Correctly index choices starting from 0
            buttonComponent.onClick.RemoveAllListeners(); // Ensure no old listeners
            buttonComponent.onClick.AddListener(() => ChooseOption(choiceIndex));
        }
    }


    public void ChooseOption(int index)
    {
        Debug.Log("Choosing option: " + (index + 1)); // Display choice number starting from 1
        Debug.Log("Current line index before increment: " + currentLineIndex);
        Debug.Log("Total lines available: " + currentLines.Count);

        if (currentLine.options != null && currentLine.options.Count > index)
        {
            string npcResponse = currentLine.options[index].npc_response;

            if (!string.IsNullOrEmpty(npcResponse))
            {
                // Show the NPC response
                npcTextUI.text = npcResponse;
                Debug.Log("NPC says: " + npcResponse);
            }

            // Delay the next step to allow the player to see the NPC response
            StartCoroutine(ProceedToNextLine(index));
        }
    }

    private IEnumerator ProceedToNextLine(int index)
    {
        // Wait for a brief moment to display the NPC response (e.g., 1.5 seconds)
        yield return new WaitForSeconds(0.5f);

        // Check if there are next options to display
        if (currentLine.options[index].next_options != null && currentLine.options[index].next_options.Count > 0)
        {
            DisplayNextOptions(currentLine.options[index].next_options);
        }
        else
        {
            // Move to the next line if specified
            int nextLineIndex = currentLine.options[index].nextLineIndex;
            if (nextLineIndex >= 0 && nextLineIndex < currentLines.Count)
            {
                currentLineIndex = nextLineIndex;
                DisplayDialogue();
            }
            else
            {
                Debug.Log("Ending dialogue.");
                EndDialogue(); // End dialogue when no valid next line
            }
        }
    }

    void DisplayNextOptions(List<Option> nextOptions)
    {
        // Clear previous buttons safely
        if (buttonContainer != null)
        {
            for (int i = buttonContainer.childCount - 1; i >= 0; i--)
            {
                Transform child = buttonContainer.GetChild(i);
                if (child != null)
                {
                    Destroy(child.gameObject);
                }
            }
        }

        // Create new buttons for the next options
        for (int i = 0; i < nextOptions.Count; i++)
        {
            GameObject newButton = Instantiate(buttonPrefab, buttonContainer);
            RectTransform buttonRect = newButton.GetComponent<RectTransform>();
            buttonRect.localScale = Vector3.one;

            // Set button properties to ensure text fits properly
            LayoutElement layoutElement = newButton.GetComponent<LayoutElement>();
            if (layoutElement == null)
            {
                layoutElement = newButton.AddComponent<LayoutElement>();
            }

            layoutElement.minHeight = 60;  // Adjust the height as needed
            layoutElement.preferredHeight = 60;

            // Set the button text
            TextMeshProUGUI buttonText = newButton.GetComponentInChildren<TextMeshProUGUI>();
            buttonText.text = nextOptions[i].player;
            buttonText.fontSize = 26; // Adjust font size for readability

            // Adjust button width based on the text length to avoid truncation
            float textWidth = buttonText.preferredWidth;
            buttonRect.sizeDelta = new Vector2(Mathf.Max(200, textWidth + 20), buttonRect.sizeDelta.y);

            // Set up the button's onClick event
            Button buttonComponent = newButton.GetComponent<Button>();
            int choiceIndex = i; // Correctly index choices starting from 0
            buttonComponent.onClick.RemoveAllListeners(); // Ensure no old listeners
            buttonComponent.onClick.AddListener(() => ChooseOptionFromNextOptions(nextOptions, choiceIndex));
        }
    }

    void ChooseOptionFromNextOptions(List<Option> nextOptions, int index)
    {
        Debug.Log("Choosing next option: " + (index + 1));
        string npcResponse = nextOptions[index].npc_response;
        if (!string.IsNullOrEmpty(npcResponse))
        {
            npcTextUI.text = npcResponse;
            Debug.Log("NPC says: " + npcResponse);
        }

        // If no more options are available, end the dialogue
        Debug.Log("Ending dialogue.");
        EndDialogue();
    }

    void EndDialogue()
    {
        playerMovement.SetCanMove(true);
        if (npcTextUI != null)
        {
            npcTextUI.text = ""; // Clear the NPC text
        }

        // Destroy dialogue panel to hide the dialogue UI
        if (dialoguePanel != null)
        {
            Destroy(dialoguePanel);
        }

        // Clear the buttons in button container to prevent lingering buttons
        if (buttonContainer != null)
        {
            for (int i = buttonContainer.childCount - 1; i >= 0; i--)
            {
                Transform child = buttonContainer.GetChild(i);
                if (child != null)
                {
                    Destroy(child.gameObject);
                }
            }
        }
    }
}
