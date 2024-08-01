using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InputHandler
{

    private Player player;

    public InputHandler(Player player)
    {
        this.player = player;
    }

    public void CheckInput()
    {
        if(player.IsMoving)
            return;
        KeyCode keyPressed = KeyCode.Escape;


        if(Input.GetKey(KeyCode.A))
        {
            keyPressed = KeyCode.A;

        }
        else if(Input.GetKey(KeyCode.S))
        { 
            keyPressed = KeyCode.S; 
        }
        else if(Input.GetKey(KeyCode.D))
        { 
            keyPressed = KeyCode.D; 
        }
        else if(Input.GetKey(KeyCode.W))
        { 
            keyPressed = KeyCode.W; 
        }



        if (keyPressed != KeyCode.Escape)
        {
            HandleInput(keyPressed);
        }

    }

    private void HandleInput(KeyCode keyPressed)
    {
        switch (keyPressed)
        {
            case KeyCode.A: 
            case KeyCode.S:
            case KeyCode.D:
            case KeyCode.W:
                ProcessMovementInput(keyPressed);
                break;
        }
    }

    private void ProcessMovementInput(KeyCode keyPressed)
    {
        Vector2Int direction = new Vector2Int(0,0);
        switch(keyPressed)
        {
            case KeyCode.A:
                direction = Direction.Left;
                break;
            case KeyCode.S:
                direction = Direction.Down;
                break;
            case KeyCode.D:
                direction = Direction.Right;
                    break;
            case KeyCode.W:
                direction = Direction.Up;
                break;
        }

        player.Move.Move(direction);
    }

    
}
