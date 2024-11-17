INCLUDE Global.ink

// Dialogue 10: Setting Goals
Setting goals is essential for growth. Have you set any goals for yourself?

* I want to improve my grades this semester.
    -> Improve_Grades

* I haven’t set any specific goals.
    -> No_Specific_Goals

* I want to just get by without stressing too much.
    -> Get_By

// Branch: Improve_Grades
= Improve_Grades
That’s a fantastic goal! What steps are you taking to achieve that?

* I’m studying more and asking for help.
    -> Study_More

// Sub-Branch: Study_More
= Study_More
Great approach! Keep it up, and you’ll see results.
-> AddEdu
-> END

// Branch: No_Specific_Goals
= No_Specific_Goals
That’s okay! Sometimes it helps to start with small, achievable goals. What’s something you could work on?
-> END

// Branch: Get_By
= Get_By
That’s a common mindset, but setting clear goals can help you stay motivated and focused.
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
