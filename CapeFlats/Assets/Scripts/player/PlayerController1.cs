using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController1 : MonoBehaviour
{
    private Vector2 moveInput;
    public float moveSpeed;
    public Rigidbody2D rb2d;
    public Animator playerAnim;
    public int direction;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        // Movement
        moveInput.x = Input.GetAxisRaw("Horizontal");
        moveInput.y = Input.GetAxisRaw("Vertical");
        moveInput.Normalize();
        rb2d.velocity = moveInput * moveSpeed;

        // Walking animations
        if (moveInput.y < 0)
        {
            playerAnim.Play("playerWalkD");
            direction = 0;
        }
        else if (moveInput.x > 0)
        {
            playerAnim.Play("playerWalkR");
            direction = 1;
        }
        else if (moveInput.x < 0)
        {
            playerAnim.Play("playerWalkL");
            direction = 2;
        }
        else if (moveInput.y > 0)
        {
            playerAnim.Play("playerWalkU");
            direction = 3;
        }

        // Idle animations
        if (moveInput.y == 0 && moveInput.x == 0)
        {
            if (direction == 0)
            {
                playerAnim.Play("playerIdleD");
            }
            if (direction == 1)
            {
                playerAnim.Play("playerIdleR");
            }
            if (direction == 2)
            {
                playerAnim.Play("playerIdleL");
            }
            if (direction == 3)
            {
                playerAnim.Play("playerIdleU");
            }
        }
    }
}
