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
    }

    private void OnDestroy()
    {
        if (instance == this)
        {
            instance = null;
        }
    }
}
