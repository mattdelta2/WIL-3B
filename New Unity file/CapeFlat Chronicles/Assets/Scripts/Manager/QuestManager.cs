using UnityEngine;
using Ink.Runtime;

public class QuestManager : MonoBehaviour
{
    private Story currentStory;
    public GameObject itemPrefab;  // Reference to the item prefab to be spawned
    private GameObject spawnedItem; // Store the reference to the spawned item

    public void SetCurrentStory(Story story)
    {
        currentStory = story;
    }

    // Start a quest
    public void StartQuest(string questName)
    {
        if (currentStory != null && currentStory.variablesState != null)
        {
            currentStory.variablesState[$"{questName}Started"] = true;
            Debug.Log($"{questName} quest started.");
            SpawnItem(); // Call the method to spawn the item
        }
    }

    // Spawn the quest item
    private void SpawnItem()
    {
        if (spawnedItem == null) // Check if the item isn't already spawned
        {
            spawnedItem = Instantiate(itemPrefab, new Vector3(5, 0, 0), Quaternion.identity); // Adjust position as needed
            Debug.Log("Quest item spawned!");
        }
        else
        {
            Debug.Log("Quest item is already spawned.");
        }
    }

    // Complete a quest
    public void CompleteQuest(string questName)
    {
        if (questName == "gangQuest" && !IsQuestCompleted(questName))
        {
            Story currentStory = DialogueManager.Instance.GetCurrentStory(); // Get the current story

            // Update the quest completion status
            currentStory.variablesState["gangQuestCompleted"] = true;

            // Increment GangStat
            if (currentStory.variablesState["GangStat"] != null)
            {
                int currentGangStat = (int)currentStory.variablesState["GangStat"];
                currentStory.variablesState["GangStat"] = currentGangStat + 1; // Increment by 1
                Debug.Log($"Gang quest completed. GangStat incremented to {currentGangStat + 1}.");
            }
            else
            {
                // If GangStat does not exist, initialize it
                currentStory.variablesState["GangStat"] = 1;
                Debug.Log("Gang quest completed. GangStat initialized to 1.");
            }
        }
    }







    // Check if a quest is started
    public bool IsQuestStarted(string questName)
    {
        if (currentStory != null && currentStory.variablesState != null)
        {
            if (currentStory.variablesState[$"{questName}Started"] != null)
            {
                return (bool)currentStory.variablesState[$"{questName}Started"];
            }
        }
        return false;
    }

    // Check if a quest is completed
    public bool IsQuestCompleted(string questName)
    {
        if (currentStory != null && currentStory.variablesState != null)
        {
            if (currentStory.variablesState[$"{questName}Completed"] != null)
            {
                return (bool)currentStory.variablesState[$"{questName}Completed"];
            }
        }
        return false;
    }
}
