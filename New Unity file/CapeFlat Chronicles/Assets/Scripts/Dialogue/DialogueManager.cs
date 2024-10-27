using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using System.Collections.Generic;
using TMPro;
using System.Collections;

public class DialogueManager : MonoBehaviour
{
    public static DialogueManager Instance;

    // Reference to GameManager set via the Inspector
    [SerializeField] private GameManager gameManager;

    [Header("UI Elements")]
    public GameObject dialogueUI;
    public TextMeshProUGUI npcNameText;
    public TextMeshProUGUI dialogueText;
    public List<Button> optionButtons;
    public TextMeshProUGUI gangStatText;
    public TextMeshProUGUI educationStatText;
    public QuestManager questManager;

    private Story currentStory;
    private bool dialogueIsPlaying;
    private bool awaitingPlayerChoice;
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
        if (dialogueUI != null) dialogueUI.SetActive(false);
        foreach (Button button in optionButtons) button.gameObject.SetActive(false);

        // Check if GameManager reference is assigned
        if (gameManager == null)
        {
            Debug.LogWarning("GameManager is not assigned in DialogueManager. Please assign it in the Inspector.");
        }
    }

    public void StartDialogue(TextAsset inkJSON, string npcName)
    {
        currentStory = new Story(inkJSON.text);
        questManager.SetCurrentStory(currentStory);
        dialogueIsPlaying = true;
        dialogueUI.SetActive(true);
        npcNameText.text = npcName;

        InjectStatsIntoInk();

        PlayerMovement playerMovement = FindObjectOfType<PlayerMovement>();
        if (playerMovement != null) playerMovement.SetCanMove(false);

        DebugStats("Dialogue Started");
        ContinueStory();
    }

    public void EndDialogue()
    {
        dialogueIsPlaying = false;
        SaveStatsToGameManager();
        DebugStats("Dialogue Ended");

        if (dialogueUI != null) dialogueUI.SetActive(false);
        ClearButtons();

        NPCController npcController = FindObjectOfType<NPCController>();
        if (npcController != null && npcController.currentDialogueIndex < npcController.dialogues.Length - 1)
        {
            npcController.currentDialogueIndex++;
        }

        currentStory = null;
        PlayerMovement playerMovement = FindObjectOfType<PlayerMovement>();
        if (playerMovement != null) playerMovement.SetCanMove(true);
    }

    private void ContinueStory()
    {
        if (currentStory != null && currentStory.canContinue)
        {
            dialogueText.text = currentStory.Continue();
            ClearButtons();
            DisplayChoices();

            awaitingPlayerChoice = currentStory.currentChoices.Count > 0;
            if (!awaitingPlayerChoice) StartCoroutine(AutoAdvanceDialogue());

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
        if (dialogueIsPlaying && !awaitingPlayerChoice) ContinueStory();
    }

    private void DisplayChoices()
    {
        List<Choice> currentChoices = currentStory.currentChoices;

        for (int i = 0; i < currentChoices.Count; i++)
        {
            Button button = optionButtons[i];
            button.gameObject.SetActive(true);

            TextMeshProUGUI buttonText = button.GetComponentInChildren<TextMeshProUGUI>();
            if (buttonText != null) buttonText.text = currentChoices[i].text;

            int choiceIndex = i;
            button.onClick.RemoveAllListeners();
            button.onClick.AddListener(() => ChooseStoryChoice(choiceIndex));
        }

        for (int i = currentChoices.Count; i < optionButtons.Count; i++)
        {
            optionButtons[i].gameObject.SetActive(false);
        }
    }

    private void ChooseStoryChoice(int choiceIndex)
    {
        if (choiceIndex < 0 || choiceIndex >= currentStory.currentChoices.Count) return;

        Choice selectedChoice = currentStory.currentChoices[choiceIndex];
        Debug.Log($"Player selected choice: {selectedChoice.text}");

        if (selectedChoice.text == "I’ll get it done.")
        {
            questManager.StartQuest("gangQuest");
            Debug.Log("Quest initiation choice detected, starting 'gangQuest'.");
        }

        currentStory.ChooseChoiceIndex(choiceIndex);
        awaitingPlayerChoice = false;

        UpdateStats();
        ContinueStory();
    }

    public void UpdateStats()
    {
        if (currentStory != null && currentStory.variablesState != null)
        {
            int gangValue = GetInkVariable("GangStat");
            int eduValue = GetInkVariable("EduStat");

            if (gangStatText != null)
                gangStatText.text = $"Gang: {gangValue}";
            else
                Debug.LogWarning("gangStatText is not assigned.");

            if (educationStatText != null)
                educationStatText.text = $"Education: {eduValue}";
            else
                Debug.LogWarning("educationStatText is not assigned.");

            // Update GameManager stats
            if (gameManager != null)
            {
                gameManager.SetStat("GangStat", gangValue);
                gameManager.SetStat("EduStat", eduValue);
            }
            else
            {
                Debug.LogWarning("GameManager instance is null in UpdateStats.");
            }
        }
        else
        {
            Debug.LogWarning("currentStory or variablesState is null in UpdateStats.");
        }
    }


    private int GetInkVariable(string variableName)
    {
        try
        {
            return (int)currentStory.variablesState[variableName];
        }
        catch
        {
            return 0;
        }
    }

    private void InjectStatsIntoInk()
    {
        if (gameManager != null)
        {
            currentStory.variablesState["GangStat"] = gameManager.GetStat("GangStat");
            currentStory.variablesState["EduStat"] = gameManager.GetStat("EduStat");
        }
    }

    private void SaveStatsToGameManager()
    {
        if (gameManager != null)
        {
            gameManager.SetStat("GangStat", GetInkVariable("GangStat"));
            gameManager.SetStat("EduStat", GetInkVariable("EduStat"));
        }
    }

    private void DebugStats(string context)
    {
        if (gameManager != null)
        {
            Debug.Log($"{context}: GangStat: {gameManager.GetStat("GangStat")}, EduStat: {gameManager.GetStat("EduStat")}");
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

    private void OnEnable()
    {
        if (gangStatText == null)
            Debug.LogWarning("gangStatText is not assigned in the DialogueManager.");
        if (educationStatText == null)
            Debug.LogWarning("educationStatText is not assigned in the DialogueManager.");
        if (gameManager == null)
            Debug.LogWarning("GameManager is not assigned in the DialogueManager. Please assign it in the Inspector.");
        if (questManager == null)
            Debug.LogWarning("QuestManager is not assigned in the DialogueManager.");

        if (gameManager != null)
        {
            if (gangStatText != null)
                gangStatText.text = $"Gang: {gameManager.GetStat("GangStat")}";
            if (educationStatText != null)
                educationStatText.text = $"Education: {gameManager.GetStat("EduStat")}";
        }
    }

    void OnDisable()
    {
        gameManager.OnStatsUpdated -= UpdateStats;
    }

    public bool IsDialoguePlaying() => dialogueIsPlaying;
}
