using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using System.Collections.Generic;
using TMPro;
using System.Collections;

public class DialogueManager : MonoBehaviour
{
    public static DialogueManager Instance;

    [Header("UI Elements")]
    public GameObject dialogueUI;   // Reference to the Dialogue UI, assigned in the Inspector
    public TextMeshProUGUI npcNameText;   // Reference to the NPC name text
    public TextMeshProUGUI dialogueText;  // Reference to the main dialogue text
    public List<Button> optionButtons;  // References to your three buttons in the prefab

    private Story currentStory;
    private bool dialogueIsPlaying;
    private bool awaitingPlayerChoice;
    private string savedStoryState;

    [Header("Auto-Advance Settings")]
    public float autoAdvanceDelay = 2f;  // Delay time between lines of dialogue (in seconds)

    [SerializeField] private int inspectorDialogueIndex; // For modifying variables via the Inspector

    void Awake()
    {
        PlayerPrefs.SetInt("npc1DialogueIndex", 0); // Reset the index to 0 for testing

        if (Instance != null)
        {
            Destroy(gameObject);
        }
        else
        {
            Instance = this;
        }
    }

    void Start()
    {
        dialogueIsPlaying = false;

        // Make sure the UI is initially deactivated
        if (dialogueUI != null)
        {
            dialogueUI.SetActive(false);
        }

        // Initially deactivate the buttons
        foreach (Button button in optionButtons)
        {
            button.gameObject.SetActive(false);
        }
    }

    // Method to save story state
    public void SaveStoryState()
    {
        if (currentStory != null)
        {
            savedStoryState = currentStory.state.ToJson();
            Debug.Log("Story state saved.");
        }
    }

    // Method to load story state
    public void LoadStoryState()
    {
        if (currentStory != null && !string.IsNullOrEmpty(savedStoryState))
        {
            currentStory.state.LoadJson(savedStoryState);
            Debug.Log("Story state loaded.");
        }
        else
        {
            Debug.Log("No saved story state to load.");
        }
    }

    public void StartDialogue(TextAsset inkJSON, string npcName)
    {
        Debug.Log("Starting dialogue with NPC: " + npcName);

        // Always initialize the story, even if the previous one ended
        currentStory = new Story(inkJSON.text);
        LoadStoryState(); // Load saved state if available

        // Set the dialogue index variable in the Ink story
        if (currentStory.variablesState != null)
        {
            int currentDialogueIndex = GetDialogueIndex(npcName);  // Retrieve the dialogue index for this NPC
            currentStory.variablesState["npc1DialogueIndex"] = currentDialogueIndex;  // Set it in Ink
            Debug.Log("Setting npc1DialogueIndex to: " + currentDialogueIndex);
        }

        // Ensure the dialogue UI is active
        if (dialogueUI != null)
        {
            dialogueUI.SetActive(true);
            Debug.Log("Dialogue UI activated for NPC: " + npcName);
        }
        else
        {
            Debug.LogError("Dialogue UI reference is missing.");
        }

        dialogueIsPlaying = true;

        // Set the NPC name text
        npcNameText.text = npcName;

        // Disable player movement while dialogue is active
        PlayerMovement playerMovement = FindObjectOfType<PlayerMovement>();
        if (playerMovement != null)
        {
            playerMovement.SetCanMove(false);
        }

        ContinueStory();
    }

    private int GetDialogueIndex(string npcName)
    {
        // For now, we'll just return the npc1DialogueIndex (you can expand this for multiple NPCs)
        return PlayerPrefs.GetInt("npc1DialogueIndex", 0); // Fetch from PlayerPrefs or another storage if needed
    }



    public void EndDialogue()
    {
        Debug.Log("Ending dialogue for NPC.");

        // Save the updated dialogue index to Unity
        int updatedIndex = (int)currentStory.variablesState["npc1DialogueIndex"];
        SaveDialogueIndex("npc1DialogueIndex", updatedIndex);

        // Ensure the UI is deactivated fully at the end of dialogue
        if (dialogueUI != null)
        {
            dialogueUI.SetActive(false);
            Debug.Log("Dialogue UI deactivated.");
        }

        dialogueIsPlaying = false;
        currentStory = null; // Clear the current story

        // Re-enable player movement
        PlayerMovement playerMovement = FindObjectOfType<PlayerMovement>();
        if (playerMovement != null)
        {
            playerMovement.SetCanMove(true);
        }
    }

    private void SaveDialogueIndex(string variableName, int index)
    {
        // Save to PlayerPrefs for now (could be another system like JSON or database)
        PlayerPrefs.SetInt(variableName, index);
        Debug.Log("Saved " + variableName + " as: " + index);
    }

    private void ContinueStory()
    {
        if (currentStory != null && currentStory.canContinue)
        {
            // Display the next line of the story
            dialogueText.text = currentStory.Continue();

            // Clear old choices (since new dialogue lines may have different choices)
            ClearButtons();

            // Display new choices if available
            DisplayChoices();

            // If there are no choices to be made, auto-advance after a delay
            if (currentStory.currentChoices.Count == 0)
            {
                StartCoroutine(AutoAdvanceDialogue());
            }
            else
            {
                awaitingPlayerChoice = true;
            }
        }
        else
        {
            EndDialogue(); // Ends dialogue if no more lines to continue
        }
    }

    private IEnumerator AutoAdvanceDialogue()
    {
        awaitingPlayerChoice = false;
        yield return new WaitForSeconds(autoAdvanceDelay);

        // If dialogue is still playing and we aren't waiting for a player choice, continue the story
        if (dialogueIsPlaying && !awaitingPlayerChoice)
        {
            ContinueStory();
        }
    }

    private void DisplayChoices()
    {
        if (currentStory == null)
        {
            Debug.LogError("Current story is null in DisplayChoices().");
            return;
        }

        List<Choice> currentChoices = currentStory.currentChoices;

        for (int i = 0; i < optionButtons.Count; i++)
        {
            if (i < currentChoices.Count)
            {
                optionButtons[i].gameObject.SetActive(true);
                TextMeshProUGUI buttonText = optionButtons[i].GetComponentInChildren<TextMeshProUGUI>();
                buttonText.text = currentChoices[i].text;

                // Remove existing listeners and add new one for this choice
                int choiceIndex = i;  // Capture correct index for closure
                optionButtons[i].onClick.RemoveAllListeners();
                optionButtons[i].onClick.AddListener(() =>
                {
                    ChooseStoryChoice(choiceIndex);
                });
            }
            else
            {
                optionButtons[i].gameObject.SetActive(false); // Hide unused buttons
            }
        }
    }

    private void ChooseStoryChoice(int choiceIndex)
    {
        currentStory.ChooseChoiceIndex(choiceIndex);
        awaitingPlayerChoice = false; // Reset awaiting player choice
        ContinueStory(); // Continue the story immediately after making a choice
    }

    private void ClearButtons()
    {
        foreach (Button button in optionButtons)
        {
            button.gameObject.SetActive(false);
            button.onClick.RemoveAllListeners();  // Clear previous listeners to avoid stacking
        }
    }

    public bool IsDialoguePlaying()
    {
        return dialogueIsPlaying;
    }

    // Updated to pass a variable name dynamically and increment it
    public void IncrementDialogueIndex(string variableName)
    {
        if (currentStory != null)
        {
            Debug.Log($"Calling IncrementDialogueIndex for: {variableName}");

            try
            {
                // Try to get the variable and increment it
                if (currentStory.variablesState[variableName] is int currentIndex)
                {
                    Debug.Log($"Current {variableName} value: {currentIndex}");

                    // Increment the index
                    currentStory.variablesState[variableName] = currentIndex + 1;
                    Debug.Log($"New {variableName} value: {currentIndex + 1}");
                }
                else
                {
                    Debug.LogError($"{variableName} is not an int.");
                }
            }
            catch (System.Exception e)
            {
                Debug.LogError($"Error while trying to increment {variableName}: {e.Message}");
            }
        }
        else
        {
            Debug.LogError("Current story is null.");
        }
    }

    // Method to set any Ink variable at runtime
    public void SetInkVariable(string variableName, int value)
    {
        if (currentStory != null)
        {
            currentStory.variablesState[variableName] = value;
            Debug.Log($"{variableName} set to: {value}");
        }
        else
        {
            Debug.LogError("Current story is null.");
        }
    }

    // Example to set variable from Inspector
    public void UpdateDialogueIndexFromInspector()
    {
        SetInkVariable("npc1DialogueIndex", inspectorDialogueIndex);
    }

    // Method to retrieve an Ink variable value
    public int GetInkVariable(string variableName)
    {
        if (currentStory != null && currentStory.variablesState[variableName] is int value)
        {
            Debug.Log($"{variableName} is: {value}");
            return value;
        }
        else
        {
            Debug.LogError($"{variableName} is not an int or story is null.");
            return 0;
        }
    }
}
