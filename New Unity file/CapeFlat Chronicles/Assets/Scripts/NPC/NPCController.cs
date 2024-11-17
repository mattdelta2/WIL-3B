using UnityEngine;

public class NPCController : MonoBehaviour
{
    public string npcName;
    public TextAsset[] dialogues; // Array of Ink JSON files for this NPC
    public int currentDialogueIndex = 0;
    public string questName; // Field to specify the quest associated with this NPC

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
            isPlayerInRange = false;

            if (DialogueManager.Instance.IsDialoguePlaying())
            {
                DialogueManager.Instance.EndDialogue();
            }
        }
    }
}
