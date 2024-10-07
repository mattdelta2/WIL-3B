using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    public float moveSpeed = 5f;
    private Rigidbody2D rb;
    private Vector2 movement;

    private NPCController nearbyNPC;  // Reference to the nearby NPC

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
    }

    void Update()
    {
        // Capture player movement input
        movement.x = Input.GetAxisRaw("Horizontal");
        movement.y = Input.GetAxisRaw("Vertical");

        // Detect interaction input (e.g., pressing "E")
        if (Input.GetKeyDown(KeyCode.E) && nearbyNPC != null)
        {
            Debug.Log("Player pressed E");
            nearbyNPC.Interact();  // Trigger interaction with the NPC
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
    }

    // When the player exits the NPC's trigger area, clear the NPC reference
    void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag("NPC"))
        {
            Debug.Log("Player exited NPC area: " + nearbyNPC.npcName);
            nearbyNPC = null;
        }
    }
}
