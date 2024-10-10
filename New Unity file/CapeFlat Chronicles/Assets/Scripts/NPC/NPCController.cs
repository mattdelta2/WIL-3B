using UnityEngine;

public class NPCController : MonoBehaviour
{
    public string npcName;  // Name of the NPC (can be displayed in dialogues)
    public DialogueNode startDialogueNode;  // Assign the starting DialogueNode in the Inspector
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
        // Start the dialogue if not already completed
        if (!GameManager.instance.HasCompletedDialogue(npcName))
        {
            dialogueManager.StartDialogue(startDialogueNode);
        }
        else
        {
            Debug.Log("Player has already completed this dialogue.");
        }
    }
}
