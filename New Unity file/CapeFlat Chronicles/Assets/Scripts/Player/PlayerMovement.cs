using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    public float moveSpeed = 5f;
    private Rigidbody2D rb;
    private Vector2 movement;

    private NPCController nearbyNPC;  // Reference to the nearby NPC
    private QuestItem nearbyQuestItem; // Reference to the nearby quest item
    private bool canMove = true;  // Flag to control player movement

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
    }

    public void Update()
    {
        if (canMove)
        {
            // Capture player movement input
            movement.x = Input.GetAxisRaw("Horizontal");
            movement.y = Input.GetAxisRaw("Vertical");
        }
        else
        {
            movement = Vector2.zero; // Stop player movement
        }

        // Detect interaction input (e.g., pressing "E") and call NPC interaction or quest item interaction
        if (Input.GetKeyDown(KeyCode.E))
        {
            if (nearbyNPC != null)
            {
                Debug.Log("Player pressed E for NPC");
                nearbyNPC.StartInteraction();  // Trigger interaction with the NPC
                SetCanMove(false);  // Stop player movement while interacting
            }
            else if (nearbyQuestItem != null)
            {
                Debug.Log("Player pressed E for quest item");
                nearbyQuestItem.Interact();  // Trigger interaction with the quest item
                                             // You can choose to stop movement here, but it will be reset in the QuestItem interact method
                                             // SetCanMove(false); 
            }
        }
    }


    void FixedUpdate()
    {
        // Apply movement
        rb.MovePosition(rb.position + movement * moveSpeed * Time.fixedDeltaTime);
    }

    // When the player enters an NPC's trigger area, store the NPC reference
    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("NPC"))
        {
            nearbyNPC = other.GetComponent<NPCController>();
            Debug.Log("Player entered NPC area: " + other.name);
        }
        else if (other.CompareTag("QuestItem")) // Check for quest item
        {
            nearbyQuestItem = other.GetComponent<QuestItem>();
            Debug.Log("Player entered quest item area: " + other.name);
        }
    }

    // When the player exits the trigger areas, clear the references
    void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag("NPC") && nearbyNPC != null)
        {
            Debug.Log("Player exited NPC area: " + nearbyNPC.npcName);
            nearbyNPC = null;
        }
        else if (other.CompareTag("QuestItem") && nearbyQuestItem != null)
        {
            Debug.Log("Player exited quest item area: " + nearbyQuestItem.gameObject.name);
            nearbyQuestItem = null;
        }
    }

    // Method to set whether the player can move or not
    public void SetCanMove(bool value)
    {
        canMove = value;
    }
}
