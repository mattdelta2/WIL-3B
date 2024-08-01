using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Character : MonoBehaviour
{
    public CharacterMover Move { get; private set; }
    public CharacterTurner Turn { get; private set; }

    public bool IsMoving =>Move.IsMoving;
    public Vector2Int Facing =>Turn.Facing;
    public CharacterAnimator Animator { get; private set; }
    protected virtual void Awake()
    {
        Move = new CharacterMover(this);
        Turn = new CharacterTurner();
        Animator = new CharacterAnimator(this);

    }
    // Start is called before the first frame update
    protected virtual void Start()
    {
        
    }

    // Update is called once per frame
    protected virtual void Update()
    {
        Animator.ChooseLayer();
        Animator.UpdateParameters();

        
    }
}
