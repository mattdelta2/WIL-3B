using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Player : Character
{
    public InputHandler InputHandler { get; private set; }

    protected override void Awake()
    {
        base.Awake();
        InputHandler = new InputHandler(this);
    }

    protected override void Start()
    {
        base.Start();
        Vector2Int currentCell = Map.Grid.GetCell2D(this.gameObject); 
        transform.position = Map.Grid.GetCellCenter2D(currentCell);
        
    }

    
    protected override void Update()
    {
        base.Update();
        InputHandler.CheckInput();
        
    }
}
