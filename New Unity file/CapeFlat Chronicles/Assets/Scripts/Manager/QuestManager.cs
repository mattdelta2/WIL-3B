using UnityEngine;
using Ink.Runtime;

public class QuestManager : MonoBehaviour
{
    public static QuestManager instance; // Singleton instance

    private Story currentStory;
    public GameObject itemPrefab;
    private GameObject spawnedItem;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
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

    // Start a quest for a specific quest name
    public void StartQuest(string questName)
    {
        if (currentStory != null && currentStory.variablesState != null)
        {
            currentStory.variablesState[$"{questName}Started"] = true;
            Debug.Log($"{questName} quest started.");
            SpawnItem(questName); // Spawn the item related to the quest if needed
        }
        else
        {
            Debug.LogWarning("QuestManager could not start quest: currentStory or variablesState is null.");
        }
    }

    // Spawn the quest item at specific locations based on the quest name
    private void SpawnItem(string questName)
    {
        if (spawnedItem == null && itemPrefab != null)
        {
            Vector3 spawnPosition = GetSpawnPositionForQuest(questName);
            spawnedItem = Instantiate(itemPrefab, spawnPosition, Quaternion.identity);
            QuestItem questItem = spawnedItem.GetComponent<QuestItem>();
            if (questItem != null)
            {
                questItem.questName = questName;
                Debug.Log("Quest item spawned for quest: " + questItem.questName);
            }
        }
        else
        {
            Debug.LogWarning("Item prefab not set or item already spawned.");
        }
    }

    // Determine spawn positions for items based on quest name
    private Vector3 GetSpawnPositionForQuest(string questName)
    {
        switch (questName)
        {
            case "gangQuest":
                return new Vector3(5, 0, 0); // Example location for gang quest item
            case "supportQuest":
                return new Vector3(3, 0, 0); // Example location for support quest item
            case "dreamsQuest":
                return new Vector3(-2, 0, 0); // Example location for dreams quest item
            default:
                return Vector3.zero; // Default position if no specific location
        }
    }

    // Complete a quest for a specific quest name
    public void CompleteQuest(string questName)
    {
        if (!IsQuestCompleted(questName))
        {
            if (currentStory != null && currentStory.variablesState != null)
            {
                currentStory.variablesState[$"{questName}Completed"] = true;

                // Update stats based on quest type
                if (questName == "gangQuest")
                {
                    GameManager.instance.IncrementStat("GangStat");
                    int updatedGangStat = GameManager.instance.GetStat("GangStat");
                    DialogueManager.Instance.gangStatText.text = $"Gang: {updatedGangStat}";
                }
                else if (questName == "supportQuest" || questName == "dreamsQuest")
                {
                    GameManager.instance.IncrementStat("EduStat");
                    int updatedEduStat = GameManager.instance.GetStat("EduStat");
                    DialogueManager.Instance.educationStatText.text = $"Edu: {updatedEduStat}";
                }

                Debug.Log($"Quest '{questName}' completed and stats updated.");
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
