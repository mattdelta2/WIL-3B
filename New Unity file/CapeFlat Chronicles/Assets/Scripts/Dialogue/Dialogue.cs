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
    public string player;
    public List<Option> options;
}

[System.Serializable]
public class Option
{
    public string player;
    public string result;
    public string npc_response;
}

[System.Serializable]
public class DialogueRoot
{
    public List<Dialogue> dialogues;
}
