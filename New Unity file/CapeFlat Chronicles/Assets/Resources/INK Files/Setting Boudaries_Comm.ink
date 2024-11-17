INCLUDE Global.ink

// Dialogue 19: Setting Boundaries
Setting boundaries is important for mental health. Do you feel comfortable saying no?

* I’ve learned to say no when I need to.
    -> Learned_To_Say_No

* I struggle to say no.
    -> Struggle_With_No

* I don’t think about boundaries.
    -> No_Thoughts_On_Boundaries

// Branch: Learned_To_Say_No
= Learned_To_Say_No
That’s excellent! Knowing your limits can protect your well-being. What’s an example of a boundary you’ve set?

* I stopped going to parties that made me uncomfortable.
    -> Stopped_Going_To_Parties

// Sub-Branch: Stopped_Going_To_Parties
= Stopped_Going_To_Parties
Great decision! Prioritizing your comfort is essential.
-> AddEdu
-> END

// Branch: Struggle_With_No
= Struggle_With_No
That’s understandable. It’s important to practice assertiveness. Start small and build your confidence.
-> END

// Branch: No_Thoughts_On_Boundaries
= No_Thoughts_On_Boundaries
Boundaries are crucial for healthy relationships. Consider what you need to feel safe and respected.
-> AddGang
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END
