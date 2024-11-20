INCLUDE Global.ink

// Dialogue 10: Setting Goals
Setting goals is essential for growth. Have you set any goals for yourself?

* I want to improve my grades this semester.
    -> Improve_Grades

* I haven’t set any specific goals.
    -> No_Specific_Goals

* I want to just get by without stressing too much.
    -> Get_By

// Branch: Improve Grades
= Improve_Grades
That’s a fantastic goal! What steps are you taking to achieve that?

* I’m studying more and asking for help.
    -> Study_More

* I’m trying to manage my time better.
    -> Manage_Time_Better

= Study_More
Great approach! Keep it up, and you’ll see results.
-> AddEdu
-> END

= Manage_Time_Better
Time management is key to balancing everything. You’re on the right track!
-> AddEdu
-> END

// Branch: No Specific Goals
= No_Specific_Goals
That’s okay! Sometimes it helps to start with small, achievable goals. What’s something you could work on?

* I’d like to develop a better daily routine.
    -> Daily_Routine

* I’m not sure where to start.
    -> Unsure_Start

= Daily_Routine
A daily routine can make a big difference. Start small—just a few habits to improve your day.
-> AddEdu
-> END

= Unsure_Start
That’s understandable. Sometimes it helps to talk to someone about your interests and priorities. Would you like to brainstorm together later?
-> END

// Branch: Get By
= Get_By
That’s a common mindset, but setting clear goals can help you stay motivated and focused. Why do you think you feel this way?

* It feels overwhelming to think too far ahead.
    -> Overwhelmed

* I’m not sure if goals will really make a difference.
    -> Skeptical_Of_Goals

= Overwhelmed
That’s okay. Life can feel overwhelming at times. Start with one small goal and build from there.
-> END

= Skeptical_Of_Goals
Goals don’t have to be big—they just need to guide you. Even small steps can lead to big changes.
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
