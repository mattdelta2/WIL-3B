using UnityEngine;
using Ink.Runtime;

public class QuestManager : MonoBehaviour
{
    private Story currentStory;

    public void SetCurrentStory(Story story)
    {
        currentStory = story;
    }

    // Start a quest
    public void StartQuest(string questName)
    {
        if (currentStory != null)
        {
            currentStory.variablesState[$"{questName}Started"] = true;
            Debug.Log($"{questName} quest started.");
        }
    }

    // Complete a quest
    public void CompleteQuest(string questName)
    {
        if (currentStory != null)
        {
            currentStory.variablesState[$"{questName}Completed"] = true;
            Debug.Log($"{questName} quest completed.");
        }
    }

    // Check if a quest is started
    public bool IsQuestStarted(string questName)
    {
        if (currentStory != null && currentStory.variablesState[$"{questName}Started"] != null)
        {
            return (bool)currentStory.variablesState[$"{questName}Started"];
        }
        return false;
    }

    // Check if a quest is completed
    public bool IsQuestCompleted(string questName)
    {
        if (currentStory != null && currentStory.variablesState[$"{questName}Completed"] != null)
        {
            return (bool)currentStory.variablesState[$"{questName}Completed"];
        }
        return false;
    }
}
