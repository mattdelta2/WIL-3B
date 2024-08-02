using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.InputSystem;

public class playerController : MonoBehaviour
{

    public float moveSpeed = 1f;
    public float collisionOffset = 0.05f;
    public ContactFilter2D movementFilter;
    

    List<RaycastHit2D> castCollisions = new List<RaycastHit2D>();



    Vector2 movementInput;

    Rigidbody2D rb;

    Animator animator;
    SpriteRenderer spriteRenderer;


    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        animator = GetComponent<Animator>();
        spriteRenderer = GetComponent<SpriteRenderer>();
    }



    private void FixedUpdate()
    {
        if (movementInput != Vector2.zero)  
        {           
            bool success = TryMove(movementInput);


            if(!success && movementInput.x >0)
            {
                success = TryMove(new Vector2(movementInput.x, 0));


            }
            if (!success && movementInput.y >0)
            {
                success = TryMove(new Vector2(movementInput.y, 0));
            }
            animator.SetBool("isMoving", success);

        }else
        {
            animator.SetBool("isMoving", false);
        }
        if(movementInput.x <0)
        {
            spriteRenderer.flipX = true;

        }
        else if(movementInput.x > 0)
        {
            spriteRenderer.flipX = false;
        }
        
        


    }

  private bool TryMove(Vector2 direction)
    {
        if(direction != Vector2.zero)
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
        }else
        {
            return false;
        }
    }

    
    void OnMove(InputValue movementValue)
    {
        movementInput = movementValue.Get<Vector2>();


    }
}
