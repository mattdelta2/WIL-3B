using UnityEngine;

[CreateAssetMenu(fileName = "New Dialogue Node", menuName = "Dialogue/Dialogue Node")]
public class DialogueNode : ScriptableObject
{
    [TextArea(3, 10)]
    public string npcText;  // The NPC's line of dialogue
    public string[] playerChoices;  // Player's choices at this dialogue node
    public DialogueNode[] nextNodes;  // The next dialogue nodes based on the player's choice
    public string statToChange;  // Optional stat change (education/gang/neutral)
    public bool isEndNode;  // Marks if this is the end of the conversation
}
