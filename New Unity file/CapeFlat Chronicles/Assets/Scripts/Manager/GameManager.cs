using UnityEngine;
using System;
using System.Collections.Generic;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;

    public event Action OnStatsUpdated;

    public Dictionary<string, int> npcDialogueProgress = new Dictionary<string, int>();

    private Dictionary<string, int> gameStats = new Dictionary<string, int>()
    {
        { "GangStat", 0 },
        { "EduStat", 0 }
    };

    private int maxStatThreshold = 20; // Define the threshold to trigger an ending
    private Dictionary<string, int> npcDialogueCounts = new Dictionary<string, int>()
    {
        { "Gang Member", 30 },
        { "Gran", 25 },
        { "Teacher", 25 },
        { "Community Member", 25 }
    };

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else if (instance != this)
        {
            Destroy(gameObject);
        }
    }

    public int GetStat(string statName)
    {
        return gameStats.ContainsKey(statName) ? gameStats[statName] : 0;
    }

    public void SetStat(string statName, int value)
    {
        if (gameStats.ContainsKey(statName))
        {
            gameStats[statName] = Mathf.Max(0, value);
        }
        else
        {
            gameStats.Add(statName, Mathf.Max(0, value));
        }

        OnStatsUpdated?.Invoke();
        CheckForEndCondition();
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

        OnStatsUpdated?.Invoke();
        CheckForEndCondition();
    }

    public void UpdateDialogueProgress(string npcName)
    {
        if (npcDialogueProgress.ContainsKey(npcName))
        {
            npcDialogueProgress[npcName]++;
        }
        else
        {
            npcDialogueProgress[npcName] = 1;
        }

        CheckDialogueCompletion(npcName);
    }

    private void CheckForEndCondition()
    {
        int gangStat = GetStat("GangStat");
        int eduStat = GetStat("EduStat");

        if (gangStat >= maxStatThreshold)
        {
            TriggerEnding("GangEndingScene");
        }
        else if (eduStat >= maxStatThreshold)
        {
            TriggerEnding("EducationEndingScene");
        }
    }

    private void CheckDialogueCompletion(string npcName)
    {
        if (npcDialogueProgress.ContainsKey(npcName) && 
            npcDialogueCounts.ContainsKey(npcName) &&
            npcDialogueProgress[npcName] >= npcDialogueCounts[npcName])
        {
            if (npcName == "Gang Member")
            {
                TriggerEnding("Gang Ending");
            }
            else if (npcName == "Gran" || npcName == "Teacher")
            {
                TriggerEnding("Education Ending");
            }
            else if (npcName == "Community Member")
            {
                // Neutral or custom ending
                TriggerEnding("Education Ending");
            }
        }
    }

    private void TriggerEnding(string sceneName)
    {
        Debug.Log($"Triggering ending: {sceneName}");
        UnityEngine.SceneManagement.SceneManager.LoadScene(sceneName);
    }

    private void OnDestroy()
    {
        if (instance == this)
        {
            instance = null;
        }
    }
}
