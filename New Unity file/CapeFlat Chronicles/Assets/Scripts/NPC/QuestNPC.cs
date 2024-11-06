using UnityEngine;

public class QuestNPC : MonoBehaviour
{
    public string questName; // Name of the quest associated with this NPC

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            InteractWithPlayer();
        }
    }

    private void InteractWithPlayer()
    {
        Debug.Log($"Player interacted with quest NPC for quest: {questName}");

        // If it's a specific quest, we can check if it's the teacher quest
        if (questName == "teacherQuest")
        {
            // Grant additional EduStat for interacting with the mentor NPC
            GameManager.instance.IncrementStat("EduStat");
            Debug.Log("Player received an additional EduStat point for interacting with the mentor NPC.");

            // Optionally, you can destroy this NPC after interaction if it's meant to be a one-time interaction
            Destroy(gameObject);
        }
        else
        {
            Debug.LogWarning("Unknown quest interaction in QuestNPC.");
        }
    }
}
