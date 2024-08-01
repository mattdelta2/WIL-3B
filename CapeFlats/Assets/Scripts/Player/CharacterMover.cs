using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterMover
{
    private Character character;
    private Transform transform;
    private const float TIME_TO_MOVE_CELL = .375f;

    public CharacterMover(Character character)
    {
        this.character = character;
        this.transform = character.transform;
    }

    public void Move(Vector2Int direction)
    {
       if(direction.IsBasic())
        {
          character.StartCoroutine(Co_Move(direction));
        }
    }

    public IEnumerator Co_Move(Vector2Int direction)
    {
        Vector2Int startingCell = Map.Grid.GetCell2D(character.gameObject);
        Vector2Int endingCell = startingCell + direction;

        Vector2 startingPos = Map.Grid.GetCellCenter2D(startingCell);
        Vector2 endingPos = Map.Grid.GetCellCenter2D(endingCell);

        float elapsedTime = 0;

        while ((Vector2)transform.position != endingPos)
        {
            character.transform.position = Vector2.Lerp(startingPos, endingPos, elapsedTime / TIME_TO_MOVE_CELL);
            elapsedTime += Time.deltaTime;

            yield return null;
        }

        transform.position = endingPos; 

        
    }
}
