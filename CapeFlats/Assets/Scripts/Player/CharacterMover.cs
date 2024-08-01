using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterMover
{
    private Character character;
    private Transform transform;
    private const float TIME_TO_MOVE_CELL = .375f;

    public bool IsMoving { get; private set; }

    public CharacterMover(Character character)
    {
        this.character = character;
        this.transform = character.transform;

    }

    public void Move(Vector2Int direction)
    {
        if(direction.IsBasic() || IsMoving ==false) 
        {
            character.StartCoroutine(Co_Move(direction));
        }

    }

    public IEnumerator Co_Move(Vector2Int direction)
    {
        IsMoving = true;
        Vector2Int startingCell = Map.grid.GetCell2D(character.gameObject);
        Vector2Int endingCell = startingCell +direction;

        Vector2 startingPosistion = Map.grid.GetCellCenter2D(startingCell);
        Vector2 endingPosistion = Map.grid.GetCellCenter2D(endingCell);

        float elapsedTime = 0;


        while ((Vector2)transform.position != endingPosistion)
        {
            character.transform.position = Vector2.Lerp(startingPosistion, endingPosistion, elapsedTime / TIME_TO_MOVE_CELL);
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        transform.position = endingPosistion;
        IsMoving = false;
       
    }
}
