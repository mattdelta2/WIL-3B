INCLUDE Global.ink

// Dialogue 30: Making Positive Choices
Making positive choices can change your life. What steps are you taking to ensure you make good decisions?

* I’m learning to think things through before acting.
    -> Think_Through

* I still make impulsive decisions sometimes.
    -> Impulsive_Decisions

* I don’t really think about my decisions.
    -> No_Reflection

// Branch: Think Through
= Think_Through
That’s an excellent strategy! Thoughtful decisions can lead to positive outcomes. What motivates you to be more thoughtful?

* I want to avoid mistakes I’ve made before.
    -> Avoiding_Mistakes

* I want to create a better future for myself.
    -> Better_Future

= Avoiding_Mistakes
Learning from past mistakes is a sign of growth. Keep reflecting, and you’ll keep improving.
-> AddEdu
-> END

= Better_Future
Thinking ahead is one of the best ways to ensure a brighter future. Keep at it!
-> AddEdu
-> END

// Branch: Impulsive Decisions
= Impulsive_Decisions
Impulsive decisions can teach you lessons, but it’s important not to make a habit of it. What leads to your impulsive actions?

* I act before I fully understand the situation.
    -> Act_Without_Understanding

* I get overwhelmed and don’t think things through.
    -> Overwhelmed_Actions

= Act_Without_Understanding
Taking a moment to pause and gather information can help you make more informed decisions.
-> AddGang
-> END

= Overwhelmed_Actions
Feeling overwhelmed is natural. Try breaking situations into smaller, manageable parts to reduce impulsivity.
-> AddGang
-> END

// Branch: No Reflection
= No_Reflection
Not reflecting on your decisions can hold you back. Have you considered what reflection might teach you?

* It might help me understand my mistakes better.
    -> Understand_Mistakes

* I don’t see the point of dwelling on the past.
    -> No_Point_Dwelling

= Understand_Mistakes
That’s the right mindset. Understanding your mistakes can guide you toward better choices.
-> AddEdu
-> END

= No_Point_Dwelling
Reflection isn’t about dwelling on the past; it’s about learning from it. Don’t underestimate its power.
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
