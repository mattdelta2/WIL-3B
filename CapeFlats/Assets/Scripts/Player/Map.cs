using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Map : MonoBehaviour
{

    public static Grid Grid { get; private set; }
    // Start is called before the first frame update
    void Start()
    {
        Grid = FindAnyObjectByType<Grid>();
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
