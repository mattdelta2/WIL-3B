using UnityEngine;
using System.Collections.Generic;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;

    // Store NPC dialogue progress
    public Dictionary<string, int> npcDialogueProgress = new Dictionary<string, int>();

    // Store game stats
    private Dictionary<string, int> gameStats = new Dictionary<string, int>()
    {
        { "GangStat", 0 },
        { "EduStat", 0 }
    };

    void Awake()
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

    // Method to record dialogue progress
    public void RecordDialogueProgress(string npcName, int lineIndex)
    {
        if (npcDialogueProgress.ContainsKey(npcName))
        {
            npcDialogueProgress[npcName] = lineIndex;  // Update the progress
        }
        else
        {
            npcDialogueProgress.Add(npcName, lineIndex);  // Record progress for the NPC dialogue
        }
    }

    // Method to check if dialogue has been completed
    public bool HasCompletedDialogue(string npcName)
    {
        return npcDialogueProgress.ContainsKey(npcName) && npcDialogueProgress[npcName] > 0;
    }

    // Method to get dialogue progress
    public int GetDialogueProgress(string npcName)
    {
        if (npcDialogueProgress.ContainsKey(npcName))
            return npcDialogueProgress[npcName];
        return 0; // Default to the beginning if no progress recorded
    }

    // Method to get a game stat
    public int GetStat(string statName)
    {
        if (gameStats.ContainsKey(statName))
            return gameStats[statName];
        return 0; // Default to 0 if the stat does not exist
    }

    // Method to set a game stat
    public void SetStat(string statName, int value)
    {
        if (gameStats.ContainsKey(statName))
        {
            gameStats[statName] = value; // Update the stat
        }
        else
        {
            gameStats.Add(statName, value); // Initialize the stat if it doesn't exist
        }
    }
}
