using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class SettingsMenu : MonoBehaviour
{
    // Start is called before the first frame update
    public AudioMixer audioMixer;
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    public void Volume(float volume)
    {
        Debug.Log(volume);
        audioMixer.SetFloat("Master", volume);
    }
    public void MusicVolume(float volume)
    {
        audioMixer.SetFloat("Music", volume);
    }
    public void SFXVolume(float volume)
    {
        audioMixer.SetFloat("Effects", volume);
    }

    public GameObject settingsPanel;
    public GameObject mainPanel;

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

    

}
