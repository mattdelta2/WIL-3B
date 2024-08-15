using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DialogueEditor;



public class NPC : MonoBehaviour
{
    public NPCConversation myconversation;


    public void Interact()
    {

        ConversationManager.Instance.StartConversation(myconversation);
        
    }


}
