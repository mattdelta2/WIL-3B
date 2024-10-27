using UnityEngine;
using System;
using System.Collections.Generic;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;

    // Event to notify UI updates for stats
    public event Action OnStatsUpdated;

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

    public int GetStat(string statName)
    {
        if (gameStats.ContainsKey(statName))
            return gameStats[statName];
        return 0; // Default to 0 if the stat does not exist
    }

    public void SetStat(string statName, int value)
    {
        if (gameStats.ContainsKey(statName))
        {
            gameStats[statName] = value;
        }
        else
        {
            gameStats.Add(statName, value);
        }
        OnStatsUpdated?.Invoke();  // Trigger the event to update UI
    }

    public void IncrementStat(string statName)
    {
        if (gameStats.ContainsKey(statName))
        {
            gameStats[statName]++;
        }
        else
        {
            gameStats[statName] = 1;
        }
        Debug.Log($"{statName} incremented. New value: {gameStats[statName]}");
        OnStatsUpdated?.Invoke();  // Trigger the event to update UI
    }
}
