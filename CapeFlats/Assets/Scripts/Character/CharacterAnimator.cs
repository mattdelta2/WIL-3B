using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterAnimator
{

    private Character character;
    private Animator animator;


    private string walkingParameter = "isWalking";
    private string horParameter = "xDir";
    private string VerParameter = "yDir";

    public CharacterAnimator(Character character)
    {
        this.character = character;
        this.animator = character.GetComponent<Animator>();
    }

    public void ChooseLayer()
    {
        bool isWalking = character.IsMoving;
        animator.SetBool(walkingParameter, isWalking);
    }

    public void UpdateParameters()
    {
        animator.SetFloat(horParameter,character.Facing.x);
        animator.SetFloat(VerParameter, character.Facing.y);
    }
}
