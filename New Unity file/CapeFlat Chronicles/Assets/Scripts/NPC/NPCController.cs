using UnityEngine;

public class NPCController : MonoBehaviour
{
    public string npcName;
    public TextAsset inkJSON; // Reference to the Ink JSON file for this NPC

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
        if (DialogueManager.Instance != null)
        {
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
                DialogueManager.Instance.EndDialogue(npcName);
            }
        }
    }

}
