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
        KeyCode keyPressed  = KeyCode.Escape;

        if (Input.GetKeyDown(KeyCode.A))
        {
            keyPressed = KeyCode.A;
        }
        if (Input.GetKeyDown(KeyCode.D))
        {
            keyPressed = KeyCode.D;
        }
        if (Input.GetKeyDown(KeyCode.W))
        {
            keyPressed = KeyCode.W;
        }
        if (Input.GetKeyDown(KeyCode.S))
        {
            keyPressed = KeyCode.S;
        }

        if(keyPressed != KeyCode.Escape)
        {
            HandleInput(keyPressed);
        }

        
    }

    public void HandleInput(KeyCode keyPressed)
    {
        switch (keyPressed)
        {
            case KeyCode.A:
            case KeyCode.D:
            case KeyCode.W:
            case KeyCode.S:
                ProcessMovementInput(keyPressed);
                    break;
        }
    }

    public void ProcessMovementInput(KeyCode keyPressed)
    {
        Vector2Int direction = new Vector2Int(0, 0);
        switch (keyPressed)
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
