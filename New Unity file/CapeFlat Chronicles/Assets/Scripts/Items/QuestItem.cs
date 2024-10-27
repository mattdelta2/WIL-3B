using UnityEngine;

public class QuestItem : MonoBehaviour
{
    public string questName; // Name of the quest to complete

    // This method will be called by the PlayerMovement script when the player interacts
    public void Interact()
    {
        QuestManager questManager = FindObjectOfType<QuestManager>();
        PlayerMovement playerMovement = FindObjectOfType<PlayerMovement>(); // Reference to PlayerMovement

        if (questManager != null)
        {
            questManager.CompleteQuest(questName);
            Debug.Log("Item picked up and quest completed: " + questName);
            
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
        }
    }
}




