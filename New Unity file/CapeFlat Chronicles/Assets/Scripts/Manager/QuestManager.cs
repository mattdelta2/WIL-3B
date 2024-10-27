using UnityEngine;
using Ink.Runtime;

public class QuestManager : MonoBehaviour
{
    public static QuestManager instance; // Singleton instance

    private Story currentStory;
    public GameObject itemPrefab;  // Reference to the item prefab to be spawned
    private GameObject spawnedItem; // Store the reference to the spawned item

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);  // Ensures this persists across scenes
        }
        else
        {
            Destroy(gameObject);  // Prevent duplicates
        }
    }

    public void SetCurrentStory(Story story)
    {
        currentStory = story;
        if (currentStory == null)
        {
            Debug.LogWarning("QuestManager: currentStory is null after setting.");
        }
        else
        {
            Debug.Log("QuestManager: currentStory successfully set.");
        }
    }


    // Start a quest
    public void StartQuest(string questName)
    {
        if (currentStory != null && currentStory.variablesState != null)
        {
            currentStory.variablesState[$"{questName}Started"] = true;
            Debug.Log($"{questName} quest started with currentStory variable set.");
            SpawnItem();
        }
        else
        {
            Debug.LogWarning("QuestManager could not start quest: currentStory or variablesState is null.");
        }
    }




    // Spawn the quest item
    private void SpawnItem()
    {
        if (spawnedItem == null && itemPrefab != null)
        {
            spawnedItem = Instantiate(itemPrefab, new Vector3(5, 0, 0), Quaternion.identity);
            QuestItem questItem = spawnedItem.GetComponent<QuestItem>();
            if (questItem != null)
            {
                questItem.questName = "gangQuest"; // Set the quest name
                Debug.Log("Quest item spawned with quest name: " + questItem.questName);
            }
        }
        else
        {
            Debug.LogWarning("Item prefab not set or item already spawned.");
        }
    }


    // Complete a quest
    public void CompleteQuest(string questName)
    {
        if (questName == "gangQuest" && !IsQuestCompleted(questName))
        {
            if (currentStory != null && currentStory.variablesState != null)
            {
                currentStory.variablesState["gangQuestCompleted"] = true;

                GameManager.instance.IncrementStat("GangStat");
                int updatedGangStat = GameManager.instance.GetStat("GangStat");

                Debug.Log($"Quest '{questName}' completed. GangStat incremented to {updatedGangStat}.");

                if (DialogueManager.Instance != null)
                {
                    DialogueManager.Instance.UpdateStats();

                    // Directly update UI if needed
                    DialogueManager.Instance.gangStatText.text = $"Gang: {updatedGangStat}";
                }
            }
            else
            {
                Debug.LogWarning("CompleteQuest failed: currentStory or variablesState is null.");
            }
        }
        else
        {
            Debug.LogWarning($"Quest '{questName}' is already completed or not recognized.");
        }
    }






    public bool IsQuestStarted(string questName)
    {
        return currentStory != null && currentStory.variablesState[$"{questName}Started"] != null &&
               (bool)currentStory.variablesState[$"{questName}Started"];
    }

    public bool IsQuestCompleted(string questName)
    {
        return currentStory != null && currentStory.variablesState[$"{questName}Completed"] != null &&
               (bool)currentStory.variablesState[$"{questName}Completed"];
    }
}
