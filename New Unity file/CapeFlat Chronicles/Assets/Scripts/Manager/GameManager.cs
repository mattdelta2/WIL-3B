using UnityEngine;
using System.Collections.Generic;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;
    public Dictionary<string, bool> dialogueProgress = new Dictionary<string, bool>();

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

    public void RecordDialogue(string npcName)
    {
        if (!dialogueProgress.ContainsKey(npcName))
        {
            dialogueProgress[npcName] = true;  // Record that dialogue has been completed
        }
    }

    public bool HasCompletedDialogue(string npcName)
    {
        return dialogueProgress.ContainsKey(npcName) && dialogueProgress[npcName];
    }
}
