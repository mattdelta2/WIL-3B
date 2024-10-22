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
    public GameObject dialogueUI;
    public TextMeshProUGUI npcNameText;
    public TextMeshProUGUI dialogueText;
    public List<Button> optionButtons;
    public TextMeshProUGUI gangStatText;
    public TextMeshProUGUI educationStatText;
    public NPCController nPCController;

    private Story currentStory;
    private bool dialogueIsPlaying;
    private bool awaitingPlayerChoice;

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

        if (dialogueUI != null)
        {
            dialogueUI.SetActive(false);
        }

        foreach (Button button in optionButtons)
        {
            button.gameObject.SetActive(false);
        }
    }

    public void StartDialogue(TextAsset inkJSON, string npcName)
    {
        currentStory = new Story(inkJSON.text);
        dialogueIsPlaying = true;
        dialogueUI.SetActive(true);

        npcNameText.text = npcName;

        PlayerMovement playerMovement = FindObjectOfType<PlayerMovement>();
        if (playerMovement != null)
        {
            playerMovement.SetCanMove(false);
        }

        // Debugging stats at the start of the dialogue
        DebugStats("Dialogue Started");

        ContinueStory();
    }

    public void EndDialogue()
    {
        dialogueIsPlaying = false;

        // Debugging stats at the end of the dialogue before clearing the story
        DebugStats("Dialogue Ended");

        if (dialogueUI != null)
        {
            dialogueUI.SetActive(false);
        }

        // Clear buttons for next dialogue
        ClearButtons();

        PlayerMovement playerMovement = FindObjectOfType<PlayerMovement>();
        if (playerMovement != null)
        {
            playerMovement.SetCanMove(true);
            nPCController.currentDialogueIndex += 1;
        }

        currentStory = null;
    }

    private void ContinueStory()
    {
        if (currentStory != null && currentStory.canContinue)
        {
            dialogueText.text = currentStory.Continue();

            ClearButtons();

            DisplayChoices();

            if (currentStory.currentChoices.Count == 0)
            {
                StartCoroutine(AutoAdvanceDialogue());
            }
            else
            {
                awaitingPlayerChoice = true;
            }

            // Always update stats after continuing the story
            UpdateStats();
        }
        else
        {
            EndDialogue();
        }
    }

    private IEnumerator AutoAdvanceDialogue()
    {
        awaitingPlayerChoice = false;
        yield return new WaitForSeconds(autoAdvanceDelay);

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

        if (currentChoices.Count > optionButtons.Count)
        {
            Debug.LogWarning("More choices than buttons. Limit to 3 choices.");
        }

        for (int i = 0; i < currentChoices.Count; i++)
        {
            Button button = optionButtons[i];
            button.gameObject.SetActive(true);

            TextMeshProUGUI buttonText = button.GetComponentInChildren<TextMeshProUGUI>();
            if (buttonText != null)
            {
                buttonText.text = currentChoices[i].text;
            }

            int choiceIndex = i;
            button.onClick.RemoveAllListeners();
            button.onClick.AddListener(() =>
            {
                ChooseStoryChoice(choiceIndex);
            });
        }

        for (int i = currentChoices.Count; i < optionButtons.Count; i++)
        {
            optionButtons[i].gameObject.SetActive(false);
        }
    }

    private void ChooseStoryChoice(int choiceIndex)
    {
        currentStory.ChooseChoiceIndex(choiceIndex);
        awaitingPlayerChoice = false;

        UpdateStats();  // Update stats immediately after making a choice

        ContinueStory();
    }

    private void UpdateStats()
    {
        if (currentStory.variablesState != null)
        {
            // Update Gang Stat
            if (currentStory.variablesState["GangStat"] != null)
            {
                int gangValue = Mathf.Max((int)currentStory.variablesState["GangStat"], 0); // Ensure GangStat is not below 0
                gangStatText.text = $"Gang: {gangValue}";
            }

            // Update Education Stat
            if (currentStory.variablesState["EduStat"] != null)
            {
                int educationValue = Mathf.Max((int)currentStory.variablesState["EduStat"], 0); // Ensure EduStat is not below 0
                educationStatText.text = $"Education: {educationValue}";
            }
        }
    }

    // Debug stats for GangStat and EduStat
    private void DebugStats(string context)
    {
        if (currentStory != null && currentStory.variablesState != null)
        {
            Debug.Log($"{context}:");

            // Debug Gang Stat
            if (currentStory.variablesState["GangStat"] != null)
            {
                int gangValue = Mathf.Max((int)currentStory.variablesState["GangStat"], 0); // Ensure GangStat is not below 0
                Debug.Log($"Gang Stat: {gangValue}");
            }

            // Debug Education Stat
            if (currentStory.variablesState["EduStat"] != null)
            {
                int educationValue = Mathf.Max((int)currentStory.variablesState["EduStat"], 0); // Ensure EduStat is not below 0
                Debug.Log($"Education Stat: {educationValue}");
            }
        }
        else
        {
            Debug.LogWarning("Cannot debug stats: No currentStory or variablesState.");
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
}
