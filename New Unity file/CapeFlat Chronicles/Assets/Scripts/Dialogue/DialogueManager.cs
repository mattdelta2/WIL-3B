using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using System.Collections.Generic;
using TMPro;
using System.Collections;
using System.Linq;

public class DialogueManager : MonoBehaviour
{
    public static DialogueManager Instance;

    [Header("UI Elements")]
    public GameObject dialogueUI;
    public TextMeshProUGUI npcNameText;
    public TextMeshProUGUI dialogueText;
    public List<Button> optionButtons;

    private Story currentStory;
    private bool dialogueIsPlaying;
    private bool awaitingPlayerChoice;
    private string savedStoryState;
    private bool dialogueEnded;

    [Header("Auto-Advance Settings")]
    public float autoAdvanceDelay = 2f;

    void Awake()
    {
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
        dialogueEnded = false;

        // Check if it's the first time the game is being run
        if (!PlayerPrefs.HasKey("FirstRun"))
        {
            // Reset PlayerPrefs if this is the first run
            ResetPlayerPrefs();

            // Set a flag to indicate that the reset has been done
            PlayerPrefs.SetInt("FirstRun", 1);
            PlayerPrefs.Save();
        }

        // Deactivate the UI and buttons
        if (dialogueUI != null) dialogueUI.SetActive(false);
        foreach (Button button in optionButtons)
        {
            button.gameObject.SetActive(false);
        }
    }

    void ResetPlayerPrefs()
    {
        // Reset specific dialogue-related keys or all PlayerPrefs (choose one option)

        // Option 1: Reset all PlayerPrefs
        // PlayerPrefs.DeleteAll();

        // Option 2: Reset only dialogue-related keys (replace "DialogueIndex" with actual keys)
        PlayerPrefs.DeleteKey("TeacherDialogueIndex");
        
        // Add more keys if needed

        PlayerPrefs.Save();  // Ensure the changes are saved
        Debug.Log("PlayerPrefs have been reset.");
    }


    public void StartDialogue(TextAsset inkJSON, string npcName)
    {
        Debug.Log("Starting dialogue with NPC: " + npcName);

        // Always initialize the story, even if the previous one ended
        currentStory = new Story(inkJSON.text);

        // Load saved index for this NPC from PlayerPrefs or reset to 0 if it's the first interaction
        int loadedIndex = LoadDialogueIndex(npcName);

        // If no index is saved or it's the first time, ensure it's set to 0
        if (loadedIndex == 0)
        {
            SetInkVariable(npcName + "DialogueIndex", 0);
            SaveDialogueIndex(npcName, 0);
            Debug.Log($"Set {npcName}DialogueIndex to 0 at the start.");
        }
        else
        {
            SetInkVariable(npcName + "DialogueIndex", loadedIndex);
            Debug.Log($"{npcName} dialogue index is: {loadedIndex}");
        }

        LoadStoryState(); // Load saved state if available

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



    public void EndDialogue(string npcName)
    {
        if (!dialogueIsPlaying || dialogueEnded) return;

        dialogueEnded = true;
        Debug.Log($"Ending dialogue for NPC: {npcName}");

        // Deactivate the dialogue UI
        if (dialogueUI != null)
        {
            dialogueUI.SetActive(false);
            Debug.Log("Dialogue UI deactivated.");
        }

        dialogueIsPlaying = false;
        currentStory = null;

        // Re-enable player movement
        PlayerMovement playerMovement = FindObjectOfType<PlayerMovement>();
        if (playerMovement != null)
        {
            playerMovement.SetCanMove(true);
        }

        // Increment the dialogue index only when the dialogue has completely finished
        int currentIndex = GetInkVariable(npcName + "DialogueIndex");
        IncrementDialogueIndex(npcName, currentIndex);
    }

    private void ContinueStory()
    {
        if (currentStory != null)
        {
            if (currentStory.canContinue)
            {
                dialogueText.text = currentStory.Continue();
                Debug.Log("Continuing story: " + dialogueText.text);

                ClearButtons();  // Clear previous choices
                DisplayChoices();  // Show new choices

                if (currentStory.currentChoices.Count == 0)
                {
                    StartCoroutine(AutoAdvanceDialogue());  // Auto-advance if no choices
                }
                else
                {
                    awaitingPlayerChoice = true;
                }
            }
            else
            {
                EndDialogue(npcNameText.text);
            }
        }
        else
        {
            Debug.LogWarning("No current story found.");
            EndDialogue(npcNameText.text);
        }
    }

    private IEnumerator AutoAdvanceDialogue()
    {
        awaitingPlayerChoice = false;
        yield return new WaitForSeconds(autoAdvanceDelay);

        if (dialogueIsPlaying && currentStory.canContinue && !awaitingPlayerChoice)
        {
            ContinueStory();
        }
        else
        {
            Debug.Log("AutoAdvanceDialogue - Ending dialogue.");
            EndDialogue(npcNameText.text);
        }
    }

    private void DisplayChoices()
    {
        if (currentStory == null) return;

        List<Choice> currentChoices = currentStory.currentChoices;

        for (int i = 0; i < optionButtons.Count; i++)
        {
            if (i < currentChoices.Count)
            {
                optionButtons[i].gameObject.SetActive(true);
                TextMeshProUGUI buttonText = optionButtons[i].GetComponentInChildren<TextMeshProUGUI>();
                buttonText.text = currentChoices[i].text;

                int choiceIndex = i;
                optionButtons[i].onClick.RemoveAllListeners();
                optionButtons[i].onClick.AddListener(() =>
                {
                    ChooseStoryChoice(choiceIndex);
                });
            }
            else
            {
                optionButtons[i].gameObject.SetActive(false);
            }
        }
    }

    private void ChooseStoryChoice(int choiceIndex)
    {
        if (currentStory != null)
        {
            currentStory.ChooseChoiceIndex(choiceIndex);
            awaitingPlayerChoice = false;
            ContinueStory();
        }
    }

    private void ClearButtons()
    {
        foreach (Button button in optionButtons)
        {
            button.gameObject.SetActive(false);
            button.onClick.RemoveAllListeners();
        }
    }

    public bool IsDialoguePlaying()
    {
        return dialogueIsPlaying;
    }

    // Increment dialogue index in Ink and save it
    public void IncrementDialogueIndex(string npcName, int currentIndex)
    {
        int newIndex = currentIndex + 1;
        SetInkVariable(npcName + "DialogueIndex", newIndex);
        SaveDialogueIndex(npcName, newIndex);
        Debug.Log($"Updated {npcName} dialogue index to: {newIndex}");
    }

    public void SetInkVariable(string variableName, int value)
    {
        if (currentStory != null && currentStory.variablesState != null)
        {
            if (currentStory.variablesState.Contains(variableName))
            {
                currentStory.variablesState[variableName] = value;
                Debug.Log($"Set {variableName} to {value} in Ink.");
            }
            else
            {
                Debug.LogError($"Variable {variableName} does not exist in Ink.");
            }
        }
    }

    public int GetInkVariable(string variableName)
    {
        if (currentStory != null && currentStory.variablesState != null)
        {
            if (currentStory.variablesState.Contains(variableName) && currentStory.variablesState[variableName] is int value)
            {
                Debug.Log($"{variableName} is: {value}");
                return value;
            }
            else
            {
                Debug.LogError($"Variable {variableName} does not exist or is not an int.");
                return 0;
            }
        }
        return 0;
    }

    public void SaveDialogueIndex(string npcName, int dialogueIndex)
    {
        PlayerPrefs.SetInt(npcName + "DialogueIndex", dialogueIndex);
        PlayerPrefs.Save();
        Debug.Log($"Saved dialogue index for {npcName}: {dialogueIndex}");
    }

    public int LoadDialogueIndex(string npcName)
    {
        return PlayerPrefs.GetInt(npcName + "DialogueIndex", 0);
    }

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

    public void SaveStoryState()
    {
        if (currentStory != null)
        {
            savedStoryState = currentStory.state.ToJson();
            Debug.Log("Story state saved.");
        }
    }
}
