INCLUDE Global.ink

// Dialogue 30: Making Positive Choices
Making positive choices can change your life. What steps are you taking to ensure you make good decisions?

* I’m learning to think things through before acting.
    -> Think_Through

* I still make impulsive decisions sometimes.
    -> Impulsive_Decisions

* I don’t really think about my decisions.
    -> No_Reflection

// Branch: Think_Through
= Think_Through
That’s an excellent strategy! Thoughtful decisions can lead to positive outcomes.

* I’ve been trying to be more mindful.
    -> Mindful_Approach

// Sub-Branch: Mindful_Approach
= Mindful_Approach
Good! Mindfulness can help you make better choices.
-> AddEdu
-> END

// Branch: Impulsive_Decisions
= Impulsive_Decisions
That happens to everyone. It’s important to learn from those moments and strive for improvement.
-> END

// Branch: No_Reflection
= No_Reflection
That can lead to challenges down the road. Reflecting on your choices is essential for growth.
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

