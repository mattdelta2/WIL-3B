using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Dialogue
{
    public string title;
    public List<Line> lines;
}

[System.Serializable]
public class Line
{
    public string npc;
    public List<Option> options;
}

[System.Serializable]
public class Option
{
    public string player;
    public string result;
    public string npc_response;
    public int nextLineIndex; // Add this to control which line comes next
    public List<Option> next_options; // Add this to handle branching options
}



[System.Serializable]
public class DialogueRoot
{
    public List<Dialogue> dialogues;
}
