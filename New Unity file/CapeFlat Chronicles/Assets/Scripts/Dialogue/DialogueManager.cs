using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using System.Collections.Generic;
using TMPro;
using System.Collections;

public class DialogueManager : MonoBehaviour
{
    public static DialogueManager Instance;

    [Header("Dependencies")]
    [SerializeField] private GameManager gameManager;

    [Header("UI Elements")]
    public GameObject dialogueUI;
    public TextMeshProUGUI npcNameText;
    public TextMeshProUGUI dialogueText;
    public List<Button> optionButtons;
    public TextMeshProUGUI gangStatText;
    public TextMeshProUGUI educationStatText;

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
        dialogueUI?.SetActive(false);

        foreach (Button button in optionButtons)
        {
            button.gameObject.SetActive(false);
        }

        if (gameManager == null)
        {
            Debug.LogWarning("GameManager is not assigned in DialogueManager. Attempting to find it...");
            gameManager = FindObjectOfType<GameManager>();

            if (gameManager == null)
            {
                Debug.LogError("GameManager could not be found in the scene.");
            }
        }
    }

    public void StartDialogue(TextAsset inkJSON, string npcName)
    {
        currentStory = new Story(inkJSON.text);
        dialogueIsPlaying = true;
        dialogueUI.SetActive(true);
        npcNameText.text = npcName;

        InjectStatsIntoInk();

        var playerMovement = FindObjectOfType<PlayerMovement>();
        playerMovement?.SetCanMove(false);

        DebugStats("Dialogue Started");
        ContinueStory();
    }

    public void EndDialogue()
    {
        dialogueIsPlaying = false;
        SaveStatsToGameManager();
        DebugStats("Dialogue Ended");

        dialogueUI?.SetActive(false);
        ClearButtons();

        var npcController = FindObjectOfType<NPCController>();
        if (npcController != null && npcController.currentDialogueIndex < npcController.dialogues.Length - 1)
        {
            npcController.currentDialogueIndex++;
        }

        currentStory = null;

        var playerMovement = FindObjectOfType<PlayerMovement>();
        playerMovement?.SetCanMove(true);
    }

    private void ContinueStory()
    {
        if (currentStory != null && currentStory.canContinue)
        {
            dialogueText.text = currentStory.Continue();
            ClearButtons();
            DisplayChoices();

            awaitingPlayerChoice = currentStory.currentChoices.Count > 0;
            if (!awaitingPlayerChoice)
            {
                StartCoroutine(AutoAdvanceDialogue());
            }

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
        ClearButtons();
        List<Choice> currentChoices = currentStory.currentChoices;

        for (int i = 0; i < optionButtons.Count; i++)
        {
            if (i < currentChoices.Count)
            {
                Button button = optionButtons[i];
                button.gameObject.SetActive(true);
                button.GetComponentInChildren<TextMeshProUGUI>().text = currentChoices[i].text;

                int choiceIndex = i;
                button.onClick.RemoveAllListeners();
                button.onClick.AddListener(() => ChooseStoryChoice(choiceIndex));
            }
            else
            {
                optionButtons[i].gameObject.SetActive(false);
            }
        }
    }

    private void ChooseStoryChoice(int choiceIndex)
    {
        if (choiceIndex < 0 || choiceIndex >= currentStory.currentChoices.Count)
        {
            Debug.LogWarning("Choice index out of range.");
            return;
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

            gangStatText.text = $"Gang: {gangValue}";
            educationStatText.text = $"Education: {eduValue}";

            gameManager?.SetStat("GangStat", gangValue);
            gameManager?.SetStat("EduStat", eduValue);
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
            Debug.LogWarning($"Variable '{variableName}' not found in Ink story.");
            return 0;
        }
    }

    private void InjectStatsIntoInk()
    {
        if (gameManager != null && currentStory != null)
        {
            currentStory.variablesState["GangStat"] = gameManager.GetStat("GangStat");
            currentStory.variablesState["EduStat"] = gameManager.GetStat("EduStat");
        }
    }

    private void SaveStatsToGameManager()
    {
        if (gameManager != null && currentStory != null)
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
            if (button != null)
            {
                button.gameObject.SetActive(false);
                button.onClick.RemoveAllListeners();
            }
        }
    }


    public bool IsDialoguePlaying()
{
    return dialogueIsPlaying;
}

}
