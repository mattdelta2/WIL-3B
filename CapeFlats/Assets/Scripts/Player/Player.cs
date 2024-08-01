using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : Character
{

    public InputHandler InputHandler { get; private set; }
   protected override void Awake()
    {
        base.Awake();
        InputHandler = new InputHandler(this);
    }

    // Start is called before the first frame update
    protected override void Start()
    {
        base.Start();
        Vector2Int currentCell = Map.grid.GetCell2D(this.gameObject);
        transform.position = Map.grid.GetCellCenter2D(currentCell);
        
    }

    // Update is called once per frame
    protected override void Update()
    {
        base.Update();
        InputHandler.CheckInput();
    }
}
