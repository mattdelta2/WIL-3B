using UnityEngine;

public class NPCController : MonoBehaviour
{
    public string npcName;
    public TextAsset[] dialogues; // Array of Ink JSON files for this NPC
    public int currentDialogueIndex = 0;

    private bool isPlayerInRange = false;

    void Update()
    {
        CheckForInteraction();
    }

    private void CheckForInteraction()
    {
        if (isPlayerInRange && Input.GetKeyDown(KeyCode.E))
        {
            StartInteraction(); // Start interaction when the player presses E
        }
    }

    public void StartInteraction()
    {
        // Start the dialogue using DialogueManager
        if (DialogueManager.Instance != null && currentDialogueIndex < dialogues.Length)
        {
            DialogueManager.Instance.StartDialogue(dialogues[currentDialogueIndex], npcName);
        }
        else
        {
            Debug.LogWarning("DialogueManager instance not found or no more dialogues left.");
        }
    }



    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            isPlayerInRange = true;
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Player exited NPC area: " + npcName);

            if (DialogueManager.Instance.IsDialoguePlaying())  // Only call if dialogue is still playing
            {
                DialogueManager.Instance.EndDialogue();
            }
        }
    }
}
