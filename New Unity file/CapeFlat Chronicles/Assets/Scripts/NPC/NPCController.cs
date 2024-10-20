using UnityEngine;

public class NPCController : MonoBehaviour
{
    public string npcName;
    public TextAsset inkJSON; // Reference to the Ink JSON file for this NPC

    // This method starts the interaction and dialogue
    public void StartInteraction()
    {
        // Start the dialogue using DialogueManager
        if (DialogueManager.Instance != null)
        {
            Debug.Log("Starting interaction with NPC: " + npcName);
            DialogueManager.Instance.StartDialogue(inkJSON, npcName);
        }
        else
        {
            Debug.LogWarning("DialogueManager instance not found.");
        }
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Player entered range of NPC: " + npcName);
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Player exited range of NPC: " + npcName);

            // End dialogue if player leaves the range and if dialogue is playing
            if (DialogueManager.Instance != null && DialogueManager.Instance.IsDialoguePlaying())
            {
                DialogueManager.Instance.EndDialogue();
            }
        }
    }
}
