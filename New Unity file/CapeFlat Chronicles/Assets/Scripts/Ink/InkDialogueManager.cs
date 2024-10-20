using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class InkDialogueManager : MonoBehaviour
{
    public TextAsset inkJSONAsset; // Assign your compiled Ink JSON file here
    private Story inkStory;

    void Start()
    {
        LoadInkStory();
        DisplayNextLine();
    }

    void LoadInkStory()
    {
        inkStory = new Story(inkJSONAsset.text);
    }

    void DisplayNextLine()
    {
        if (inkStory.canContinue)
        {
            string text = inkStory.Continue();
            Debug.Log(text); // You can use this text to update a UI element in Unity
        }
    }

    public void ChooseOption(int index)
    {
        if (inkStory.currentChoices.Count > index)
        {
            inkStory.ChooseChoiceIndex(index);
            DisplayNextLine();
        }
    }
}
