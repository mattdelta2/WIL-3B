using UnityEngine;
using TMPro;  // Import TextMeshPro namespace

public class DialogueManager : MonoBehaviour
{
    public TextMeshProUGUI dialogueText;  // Reference to the dialogue text UI
    public GameObject dialoguePanel;      // Panel that holds the dialogue elements
    public string[] dialogueLines;        // Array of dialogue lines
    private int currentLineIndex = 0;     // Tracks the current line

    void Start()
    {
        dialoguePanel.SetActive(false);  // Hide dialogue at start
    }

    // This method is called to start the dialogue
    public void StartDialogue(string[] lines)
    {
        dialogueLines = lines;
        currentLineIndex = 0;
        dialoguePanel.SetActive(true);   // Show the dialogue UI
        ShowNextLine();
    }

    // Show the next line in the dialogue
    public void ShowNextLine()
    {
        if (currentLineIndex < dialogueLines.Length)
        {
            dialogueText.text = dialogueLines[currentLineIndex];
            currentLineIndex++;
        }
        else
        {
            EndDialogue();
        }
    }

    // This method is called to end the dialogue
    public void EndDialogue()
    {
        dialoguePanel.SetActive(false);  // Hide the dialogue UI
        dialogueText.text = "";  // Clear the dialogue text
    }

    // This method can be hooked to the Continue Button
    public void OnContinueButtonPressed()
    {
        ShowNextLine();
    }
}
