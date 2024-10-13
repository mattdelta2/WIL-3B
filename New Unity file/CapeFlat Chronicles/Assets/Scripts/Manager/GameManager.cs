using UnityEngine;
using System.Collections.Generic;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;
    public Dictionary<string, int> npcDialogueProgress = new Dictionary<string, int>();

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


    public bool HasCompletedDialogue(string npcName)
    {
        // If progress is 0, it means the dialogue has not been started or completed.
        return npcDialogueProgress.ContainsKey(npcName) && npcDialogueProgress[npcName] > 0;
    }


    public int GetDialogueProgress(string npcName)
    {
        if (npcDialogueProgress.ContainsKey(npcName))
            return npcDialogueProgress[npcName];
        return 0; // Default to the beginning if no progress recorded
    }
}
