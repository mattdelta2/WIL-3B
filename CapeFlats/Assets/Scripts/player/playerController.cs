using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class playerController : MonoBehaviour
{
    public float moveSpeed = 1f;
    public float collisionOffset = 0.05f;
    public ContactFilter2D movementFilter;
    public bool isInteracting = false;   // Prevents movement during interaction

    private NPC interactableNPC; // Reference to the current interactable NPC
    private IInteractable interactable;
    List<RaycastHit2D> castCollisions = new List<RaycastHit2D>();

    Vector2 movementInput;
    Rigidbody2D rb;
    Animator animator;
    SpriteRenderer spriteRenderer;

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        animator = GetComponent<Animator>();
        spriteRenderer = GetComponent<SpriteRenderer>();
    }
    private void Update()
    {
        // Check for key presses for interaction
        if (Keyboard.current.eKey.wasPressedThisFrame || Keyboard.current.fKey.wasPressedThisFrame)
        {
            OnInteract(new InputValue());  // Call interaction method
        }
    }

    private void FixedUpdate()
    {
        if (!isInteracting)  // Only allow movement if not interacting
        {
            if (movementInput != Vector2.zero)
            {
                bool success = TryMove(movementInput);

                if (!success && movementInput.x != 0)
                {
                    success = TryMove(new Vector2(movementInput.x, 0));
                }

                if (!success && movementInput.y != 0)
                {
                    success = TryMove(new Vector2(movementInput.y, 0));
                }
                animator.SetBool("isMoving", success);
            }
            else
            {
                animator.SetBool("isMoving", false);
            }

            if (movementInput.x < 0)
            {
                spriteRenderer.flipX = true;
            }
            else if (movementInput.x > 0)
            {
                spriteRenderer.flipX = false;
            }
        }
    }

    private bool TryMove(Vector2 direction)
    {
        if (direction != Vector2.zero)
        {
            int count = rb.Cast(
                direction,
                movementFilter,
                castCollisions,
                moveSpeed * Time.fixedDeltaTime + collisionOffset);

            if (count == 0)
            {
                rb.MovePosition(rb.position + direction * moveSpeed * Time.fixedDeltaTime);
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
    }

    void OnMove(InputValue movementValue)
    {
        movementInput = movementValue.Get<Vector2>();
    }

    void OnInteract(InputValue interactValue)
    {
        if (interactableNPC != null && !isInteracting)
        {
            interactableNPC.Interact();
            isInteracting = true;  // Prevent movement during interaction
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        NPC potentialInteractable = collision.GetComponent<NPC>();
        if (potentialInteractable != null)
        {
            interactableNPC = potentialInteractable;
        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        Debug.Log("Interacting with: " + interactable.GetType().Name);
        NPC potentialInteractable = collision.GetComponent<NPC>();
        if (potentialInteractable != null && potentialInteractable == interactableNPC)
        {
            interactableNPC = null;
        }
    }

    // This method is called when the dialogue ends
    public void EndInteraction()
    {
        isInteracting = false;  // Allow movement again
    }
}
