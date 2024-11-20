using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    public GameObject settingsPanel;
    public GameObject mainPanel;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void Play()
    {
        SceneManager.LoadScene("Grans house");
    }

    public void SettingsShown()
    {
        mainPanel.SetActive(false);
        settingsPanel.SetActive(true);
    }

    public void backtomain()
    {
        mainPanel.SetActive(true);
        settingsPanel.SetActive(false);
    }


    public void Quit()
    {
        Application.Quit();
    }
}
