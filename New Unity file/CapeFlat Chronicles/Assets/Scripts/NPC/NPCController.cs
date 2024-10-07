using UnityEngine;

public class NPCController : MonoBehaviour
{
    public string npcName;  // Name of the NPC (can be displayed in dialogues)
    public string[] npcDialogueLines;
    private SpriteRenderer childSpriteRenderer;
     private DialogueManager dialogueManager;

    void Start()
    {
        // Find the sprite renderer on the child capsule
        childSpriteRenderer = GetComponentInChildren<SpriteRenderer>();
        dialogueManager = FindObjectOfType<DialogueManager>();
    }

    // This method can be used to trigger NPC interaction, like dialogue
    public void Interact()
    {
        
        Debug.Log("Interacting with " + npcName);
        // Start the dialogue when interacting with the NPC
        dialogueManager.StartDialogue(npcDialogueLines);
    }
}
