using UnityEngine;

public class QuestInteractable : MonoBehaviour
{
    public string questName; // Name of the quest to complete
    public string npcName; // Name of the NPC associated with the quest
    public bool isNPC; // Toggle for whether this is an NPC interaction
    private bool isPlayerInRange = false;

    // Called when the player interacts
    public void Interact()
    {
        QuestManager questManager = FindObjectOfType<QuestManager>();
        PlayerMovement playerMovement = FindObjectOfType<PlayerMovement>();

        if (questManager != null)
        {
            if (!string.IsNullOrEmpty(questName) && !string.IsNullOrEmpty(npcName))
            {
                questManager.CompleteQuest(npcName, questName);
                Debug.Log("Interaction complete for quest: " + questName);

                // Additional stat reward if this is an NPC interaction for mentoring (e.g., teacher quest)
                if (isNPC && questName == "teacherQuest")
                {
                    GameManager.instance.IncrementStat("EduStat");
                    Debug.Log("Extra EduStat awarded for interacting with mentor NPC.");
                }
            }
            else
            {
                Debug.LogWarning("Quest name or NPC name is not set for this interactable: " + gameObject.name);
            }
        }
        else
        {
            Debug.LogWarning("QuestManager not found. Cannot complete quest.");
        }

        // Re-enable player movement before removing the interactable
        if (playerMovement != null)
        {
            playerMovement.SetCanMove(true);
        }

        // If it’s an item (not an NPC), destroy it after interaction
        if (!isNPC)
        {
            Destroy(gameObject);
        }
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Player entered interaction area: " + gameObject.name);
            isPlayerInRange = true;
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Player exited interaction area: " + gameObject.name);
            isPlayerInRange = false;
        }
    }

    private void Update()
    {
        if (isPlayerInRange && Input.GetKeyDown(KeyCode.E))
        {
            Interact();
        }
    }
}
