INCLUDE Global.ink

// Dialogue 18: Encouraging Independence
Independence is vital. How are you learning to be independent?

* I’m trying to make my own decisions.
    -> Making_Own_Decisions

* I still rely on my family for most decisions.
    -> Family_Reliance

* I don’t see the point in being independent.
    -> No_Point_In_Independence

// Branch: Making_Own_Decisions
= Making_Own_Decisions
That’s a strong step! Making choices helps you grow. What’s a recent decision you made?

* I decided to study instead of hanging out.
    -> Studying_Choice

// Sub-Branch: Studying_Choice
= Studying_Choice
Excellent choice! That dedication will pay off.
-> AddEdu
-> END

// Branch: Family_Reliance
= Family_Reliance
That’s okay, but it’s important to practice making decisions on your own, too.
-> END

// Branch: No_Point_In_Independence
= No_Point_In_Independence
Independence can empower you. It helps you realize your strengths.
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

