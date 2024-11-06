using UnityEngine;
using Ink.Runtime;
using System.Collections.Generic;

public class QuestManager : MonoBehaviour
{
    public static QuestManager instance; // Singleton instance

    private Story currentStory;
    public GameObject itemPrefab;
    public GameObject npcPrefab; // Prefab for optional NPC interaction
    private GameObject spawnedItem;
    private GameObject spawnedNPC;

    // Dictionary to track each NPC's quests and their statuses
    private Dictionary<string, Dictionary<string, bool>> npcQuests = new Dictionary<string, Dictionary<string, bool>>();

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

    // Start a quest for a specific NPC and quest name
    public void StartQuest(string npcName, string questName)
    {
        if (!npcQuests.ContainsKey(npcName))
        {
            npcQuests[npcName] = new Dictionary<string, bool>();
        }

        if (currentStory != null && currentStory.variablesState != null)
        {
            currentStory.variablesState[$"{questName}Started"] = true;
            npcQuests[npcName][$"{questName}Started"] = true;
            Debug.Log($"{questName} quest started for {npcName}.");

            // Spawn quest item or NPC if needed
            if (questName == "teacherQuest")
            {
                SpawnItem(questName);
                SpawnNPCForQuest(questName); // Optional NPC for additional interaction
            }
            else
            {
                SpawnItem(questName); // Spawn item as usual
            }
        }
        else
        {
            Debug.LogWarning("QuestManager could not start quest: currentStory or variablesState is null.");
        }
    }

    // Complete a quest for a specific NPC and quest name
    public void CompleteQuest(string npcName, string questName)
    {
        if (npcQuests.ContainsKey(npcName) && npcQuests[npcName].ContainsKey($"{questName}Started") && npcQuests[npcName][$"{questName}Started"])
        {
            if (currentStory != null && currentStory.variablesState != null)
            {
                currentStory.variablesState[$"{questName}Completed"] = true;
                npcQuests[npcName][$"{questName}Completed"] = true;

                // Update stats based on quest type
                UpdateStatsBasedOnQuest(questName);

                Debug.Log($"Quest '{questName}' completed for {npcName}.");

                // Destroy spawned NPC if quest is completed
                if (spawnedNPC != null)
                {
                    Destroy(spawnedNPC);
                    spawnedNPC = null;
                }
            }
            else
            {
                Debug.LogWarning("CompleteQuest failed: currentStory or variablesState is null.");
            }
        }
        else
        {
            Debug.LogWarning($"Quest '{questName}' is already completed or not recognized for {npcName}.");
        }
    }

    // Check if a quest is started for a specific NPC
    public bool IsQuestStarted(string npcName, string questName)
    {
        return npcQuests.ContainsKey(npcName) && npcQuests[npcName].ContainsKey($"{questName}Started") &&
               npcQuests[npcName][$"{questName}Started"];
    }

    // Check if a quest is completed for a specific NPC
    public bool IsQuestCompleted(string npcName, string questName)
    {
        return npcQuests.ContainsKey(npcName) && npcQuests[npcName].ContainsKey($"{questName}Completed") &&
               npcQuests[npcName][$"{questName}Completed"];
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

    // Spawn an NPC for quests requiring additional interaction
    private void SpawnNPCForQuest(string questName)
    {
        if (spawnedNPC == null && npcPrefab != null)
        {
            Vector3 npcSpawnPosition = GetNPCSpawnPositionForQuest(questName);
            spawnedNPC = Instantiate(npcPrefab, npcSpawnPosition, Quaternion.identity);
            QuestNPC questNPC = spawnedNPC.GetComponent<QuestNPC>();
            if (questNPC != null)
            {
                questNPC.questName = questName;
                Debug.Log("NPC spawned for quest: " + questNPC.questName);
            }
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
            case "teacherQuest":
                return new Vector3(4, 1, 0); // Location for teacher quest item
            default:
                return Vector3.zero; // Default position if no specific location
        }
    }

    // Determine spawn positions for NPCs based on quest name
    private Vector3 GetNPCSpawnPositionForQuest(string questName)
    {
        switch (questName)
        {
            case "teacherQuest":
                return new Vector3(6, 2, 0); // Example location for teacher mentor NPC
            default:
                return Vector3.zero; // Default position if no specific NPC spawn location
        }
    }

    // Update stats based on quest completion type
    private void UpdateStatsBasedOnQuest(string questName)
    {
        if (questName == "gangQuest")
        {
            GameManager.instance.IncrementStat("GangStat");
        }
        else if (questName == "supportQuest" || questName == "dreamsQuest" || questName == "trustQuest" || questName == "teacherQuest")
        {
            GameManager.instance.IncrementStat("EduStat");
        }
    }
}
