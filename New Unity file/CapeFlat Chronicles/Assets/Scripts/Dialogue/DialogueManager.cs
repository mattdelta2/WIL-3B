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
    }

    public void StartDialogue(TextAsset inkJSON, string npcName)
    {
        currentStory = new Story(inkJSON.text);
        dialogueIsPlaying = true;
        dialogueUI.SetActive(true);
        npcNameText.text = npcName;

        // Inject saved stats back into the Ink story
        InjectStatsIntoInk();

        PlayerMovement playerMovement = FindObjectOfType<PlayerMovement>();
        if (playerMovement != null) playerMovement.SetCanMove(false);

        DebugStats("Dialogue Started");
        ContinueStory();
    }

    public void EndDialogue()
    {
        dialogueIsPlaying = false;
        DebugStats("Dialogue Ended");

        if (dialogueUI != null) dialogueUI.SetActive(false);
        ClearButtons();

        PlayerMovement playerMovement = FindObjectOfType<PlayerMovement>();
        if (playerMovement != null) playerMovement.SetCanMove(true);

        // Save final story state to GameManager
        SaveStatsToGameManager();

        currentStory = null;
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

        currentStory.ChooseChoiceIndex(choiceIndex);
        awaitingPlayerChoice = false;

        UpdateStats();
        ContinueStory();
    }

    private void UpdateStats()
    {
        if (currentStory.variablesState != null)
        {
            int gangValue = GetInkVariable("GangStat");
            int eduValue = GetInkVariable("EduStat");

            gangStatText.text = $"Gang: {gangValue}";
            educationStatText.text = $"Education: {eduValue}";

            // Update GameManager stats
            GameManager.instance.SetStat("GangStat", gangValue);
            GameManager.instance.SetStat("EduStat", eduValue);
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
        currentStory.variablesState["GangStat"] = GameManager.instance.GetStat("GangStat");
        currentStory.variablesState["EduStat"] = GameManager.instance.GetStat("EduStat");
    }

    private void SaveStatsToGameManager()
    {
        GameManager.instance.SetStat("GangStat", GetInkVariable("GangStat"));
        GameManager.instance.SetStat("EduStat", GetInkVariable("EduStat"));
    }

    private void DebugStats(string context)
    {
        Debug.Log($"{context}: GangStat: {GameManager.instance.GetStat("GangStat")}, EduStat: {GameManager.instance.GetStat("EduStat")}");
    }

    private void ClearButtons()
    {
        foreach (Button button in optionButtons)
        {
            button.gameObject.SetActive(false);
            button.onClick.RemoveAllListeners();
        }
    }

    public Story GetCurrentStory()
    {
        return currentStory;
    }


    public bool IsDialoguePlaying() => dialogueIsPlaying;
}
