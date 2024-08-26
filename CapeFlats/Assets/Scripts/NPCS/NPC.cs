using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DialogueEditor;  // Assuming you're using Dialogue Editor for conversations

public class NPC : MonoBehaviour, IInteractable
{
    public NPCConversation[] conversations;  // Array of conversations
    private int currentConversationIndex = 0;  // Tracks the current conversation index

    private void Start()
    {
        
    // Assuming the tile size is 1 unit
    transform.position = SnapToGrid(transform.position, 0.16f);

    }

    public Vector2 SnapToGrid(Vector2 originalPosition, float tileSize)
    {
        float snappedX = Mathf.Round(originalPosition.x / tileSize) * tileSize;
        float snappedY = Mathf.Round(originalPosition.y / tileSize) * tileSize;
        return new Vector2(snappedX, snappedY);
    }



    public void Interact()
    {
        // Check if there are conversations available
        if (conversations.Length > 0)
        {
            // Start the current conversation
            ConversationManager.Instance.StartConversation(conversations[currentConversationIndex]);
            
            // Move to the next conversation in the array
            currentConversationIndex++;

            // If we've reached the end of the array, loop back to the last conversation
            if (currentConversationIndex >= conversations.Length)
            {
                currentConversationIndex = conversations.Length - 1;  // Repeat the last conversation
            }
        }
        else
        {
            Debug.LogWarning("No conversations assigned to this NPC.");
        }
    }
}
