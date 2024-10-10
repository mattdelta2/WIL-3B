using UnityEngine;
using TMPro;  // For handling UI text
using UnityEngine.UI;  // For handling buttons

public class DialogueManager : MonoBehaviour
{
    public TextMeshProUGUI npcTextUI;
    public Button[] choiceButtons;
    private DialogueNode currentNode;

    public void StartDialogue(DialogueNode startNode)
    {
        currentNode = startNode;
        DisplayDialogue();
    }

    public void DisplayDialogue()
    {
        npcTextUI.text = currentNode.npcText;  // Display the NPC’s text

        for (int i = 0; i < choiceButtons.Length; i++)
        {
            if (i < currentNode.playerChoices.Length)
            {
                choiceButtons[i].gameObject.SetActive(true);
                choiceButtons[i].GetComponentInChildren<TextMeshProUGUI>().text = currentNode.playerChoices[i];
                int choiceIndex = i;  // Capture the index for the button click
                choiceButtons[i].onClick.RemoveAllListeners();
                choiceButtons[i].onClick.AddListener(() => ChooseOption(choiceIndex));
            }
            else
            {
                choiceButtons[i].gameObject.SetActive(false);  // Hide unused buttons
            }
        }
    }

    public void ChooseOption(int index)
    {
        currentNode = currentNode.nextNodes[index];  // Move to the next node
        DisplayDialogue();

        // Modify stats based on the choice (optional)
        if (!string.IsNullOrEmpty(currentNode.statToChange))
        {
            ModifyStat(currentNode.statToChange);
        }

        // Check if it's the end of the conversation
        if (currentNode.isEndNode)
        {
            EndDialogue();
        }
    }

    void ModifyStat(string stat)
    {
        if (stat == "Education") { /* Increase education stat */ }
        else if (stat == "Gang") { /* Increase gang stat */ }
        else if (stat == "Neutral") { /* Handle neutral response */ }
    }

    void EndDialogue()
    {
        // Handle ending the dialogue
        npcTextUI.text = "End of conversation.";
        foreach (Button button in choiceButtons)
        {
            button.gameObject.SetActive(false);  // Hide all buttons
        }
    }
}
