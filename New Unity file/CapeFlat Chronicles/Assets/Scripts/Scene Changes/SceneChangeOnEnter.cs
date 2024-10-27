using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneChangeOnEnter : MonoBehaviour
{
    [SerializeField] private string sceneName; // Set the name of the scene to load in the Inspector

    private void OnTriggerEnter2D(Collider2D other)
    {
        // Check if the colliding object is the player
        if (other.CompareTag("Player"))
        {
            // Load the specified scene
            SceneManager.LoadScene(sceneName);
        }
    }
}
