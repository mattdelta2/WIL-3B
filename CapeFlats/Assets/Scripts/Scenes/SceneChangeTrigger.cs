using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneChangeManager : MonoBehaviour
{

    public string sceneName;

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag("Player"))  // Check if the player has entered the trigger
        {
            Debug.Log("Player entered the scene change trigger.");
            SceneManager.LoadScene(sceneName);  // Load the specified scene
        }
    }
}
