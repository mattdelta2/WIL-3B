using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Character : MonoBehaviour
{
    public CharacterMover Move { get; private set; }

    public bool IsMoving =>Move.IsMoving;

    protected virtual void Awake()
    {
        Move = new CharacterMover(this);
    }
    // Start is called before the first frame update
    protected virtual void Start()
    {
        
    }

    // Update is called once per frame
    protected virtual void Update()
    {
        
    }
}
