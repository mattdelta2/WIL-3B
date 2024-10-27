using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GangEnding : MonoBehaviour
{
   public void MainMenu()
   {
    SceneManager.LoadScene("MainMenu");
   }


   public void quit()
   {
    Application.Quit();
   }
}
