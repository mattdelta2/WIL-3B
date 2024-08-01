using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class GridExtensions
{
    public static Vector2Int GetCell2D(this Grid grid, GameObject gameObject)
    {
        Vector3 pos = gameObject.transform.position;
        Vector3Int cellPosition = grid.WorldToCell(pos);
        return new Vector2Int(cellPosition.x, cellPosition.y);
    }

    public static Vector2 GetCellCenter2D(this Grid grid, Vector2Int cell)
    {
        Vector3Int threeDimensionCell = new Vector3Int(cell.x, cell.y, 0);
        Vector3 cellCenterWorld = grid.GetCellCenterWorld(threeDimensionCell);
        return new Vector2(cellCenterWorld.x, cellCenterWorld.y);
    }
}
