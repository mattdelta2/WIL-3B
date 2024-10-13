using UnityEngine;
using System.Collections.Generic;

public class DialogueLoader : MonoBehaviour
{
    public TextAsset dialogueJSONFile; // Assign via Inspector
    private DialogueRoot dialogueRoot;

    void Start()
    {
        LoadDialogueData();
    }

    void LoadDialogueData()
    {
        dialogueRoot = JsonUtility.FromJson<DialogueRoot>(dialogueJSONFile.text);
        Debug.Log("Loaded " + dialogueRoot.dialogues.Count + " dialogues from JSON.");
    }

    public Dialogue GetDialogueByTitle(string title)
    {
        return dialogueRoot.dialogues.Find(dialogue => dialogue.title == title);
    }
}
