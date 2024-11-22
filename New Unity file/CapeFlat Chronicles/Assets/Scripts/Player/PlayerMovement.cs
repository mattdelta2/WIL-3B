using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    /*public float moveSpeed = 5f;
    private Rigidbody2D rb;
    private Vector2 movement;

    private NPCController nearbyNPC; // Reference to the nearby NPC
    
    private bool canMove = true; // Flag to control player movement

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

        // Detect interaction input (e.g., pressing "E") and call NPC interaction
        if (Input.GetKeyDown(KeyCode.E) && nearbyNPC != null)
        {
            Debug.Log("Player pressed E for NPC");
            nearbyNPC.StartInteraction(); // Trigger interaction with the NPC
            SetCanMove(false); // Stop player movement while interacting
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

    // When the player exits the NPC's trigger area, clear the reference
    void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag("NPC") && nearbyNPC != null)
        {
            Debug.Log("Player exited NPC area: " + nearbyNPC.npcName);
            nearbyNPC = null;
        }
    }

    // Method to set whether the player can move or not
    public void SetCanMove(bool value)
    {
        canMove = value;
    }*/

 
    public float moveSpeed = 5f;
    private Rigidbody2D rb;
    private Vector2 movement;

    private NPCController nearbyNPC; // Reference to the nearby NPC
    private bool canMove = true; // Flag to control player movement

    public AudioSource walkingAudioSource; // Reference to the AudioSource for walking SFX

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();

        // Ensure the AudioSource is properly set
        if (walkingAudioSource == null)
        {
            walkingAudioSource = GetComponent<AudioSource>();
        }
    }

    public void Update()
    {
        if (canMove)
        {
            // Capture player movement input
            movement.x = Input.GetAxisRaw("Horizontal");
            movement.y = Input.GetAxisRaw("Vertical");

            // Play walking sound if movement occurs
            if (movement != Vector2.zero && !walkingAudioSource.isPlaying)
            {
                walkingAudioSource.Play();
            }
            else if (movement == Vector2.zero && walkingAudioSource.isPlaying)
            {
                walkingAudioSource.Stop();
            }
        }
        else
        {
            movement = Vector2.zero; // Stop player movement
            if (walkingAudioSource.isPlaying)
            {
                walkingAudioSource.Stop(); // Stop walking SFX if movement is stopped
            }
        }

        // Detect interaction input (e.g., pressing "E") and call NPC interaction
        if (Input.GetKeyDown(KeyCode.E) && nearbyNPC != null)
        {
            Debug.Log("Player pressed E for NPC");
            nearbyNPC.StartInteraction(); // Trigger interaction with the NPC
            SetCanMove(false); // Stop player movement while interacting
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

    // When the player exits the NPC's trigger area, clear the reference
    void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag("NPC") && nearbyNPC != null)
        {
            Debug.Log("Player exited NPC area: " + nearbyNPC.npcName);
            nearbyNPC = null;
        }
    }

    // Method to set whether the player can move or not
    public void SetCanMove(bool value)
    {
        canMove = value;
    }

}
