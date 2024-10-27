using UnityEngine;

public class QuestItem : MonoBehaviour
{
    public string questName; // Name of the quest to complete
    private bool isPlayerInRange = false; // Track if player is within interaction range

    // This method will be called by the PlayerMovement script when the player interacts
    public void Interact()
    {
        QuestManager questManager = FindObjectOfType<QuestManager>();
        PlayerMovement playerMovement = FindObjectOfType<PlayerMovement>(); // Reference to PlayerMovement

        if (questManager != null)
        {
            if (!string.IsNullOrEmpty(questName))
            {
                questManager.CompleteQuest(questName);
                Debug.Log("Item picked up and quest completed: " + questName);
            }
            else
            {
                Debug.LogWarning("Quest name is not set for this item: " + gameObject.name);
            }
        }
        else
        {
            Debug.LogWarning("QuestManager not found. Cannot complete quest.");
        }

        // Re-enable player movement before destroying the item
        if (playerMovement != null)
        {
            playerMovement.SetCanMove(true);
        }

        Destroy(gameObject); // Remove item from the scene after interaction
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Player")) // Ensure your player has the "Player" tag
        {
            Debug.Log("Player entered quest item area: " + gameObject.name);
            isPlayerInRange = true; // Set flag when player is in range
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Player exited quest item area: " + gameObject.name);
            isPlayerInRange = false; // Reset flag when player leaves range
        }
    }

    private void Update()
    {
        // Check if player is in range and presses the interaction key (e.g., "E")
        if (isPlayerInRange && Input.GetKeyDown(KeyCode.E))
        {
            Interact();
        }
    }
}
