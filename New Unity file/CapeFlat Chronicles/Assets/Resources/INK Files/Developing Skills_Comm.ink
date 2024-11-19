INCLUDE Global.ink

// Dialogue 23: Developing Skills
Developing skills is essential for your future. What skills are you currently working on?

* I’m trying to improve my communication skills.
    -> Improve_Communication

* I’m not working on any specific skills.
    -> No_Specific_Skills

* I don’t think skills matter much.
    -> Skills_Dont_Matter

// Branch: Improve Communication
= Improve_Communication
That’s a valuable skill! Good communication can open many doors. How are you working on improving it?

* I’m practicing speaking in front of others.
    -> Practicing_Speaking

* I’m trying to listen more and understand others better.
    -> Improving_Listening

= Practicing_Speaking
Practicing public speaking is a great way to build confidence. Joining a club or group can help you refine your skills.
-> AddEdu
-> END

= Improving_Listening
Listening is just as important as speaking. Understanding others strengthens relationships and improves teamwork.
-> AddEdu
-> END

// Branch: No Specific Skills
= No_Specific_Skills
That’s okay! It might help to explore different activities to find what you enjoy. What interests you the most right now?

* Learning something creative, like art or music.
    -> Creative_Skills

* Gaining practical skills, like cooking or budgeting.
    -> Practical_Skills

= Creative_Skills
Creative skills can be both fulfilling and valuable. They also give you a way to express yourself.
-> AddEdu
-> END

= Practical_Skills
Practical skills are always useful. They can make your daily life easier and give you more independence.
-> AddEdu
-> END

// Branch: Skills Don’t Matter
= Skills_Dont_Matter
Skills are essential for success in many areas of life. What makes you feel like they don’t matter?

* I don’t see how they’ll help me in the long run.
    -> Don’t_See_The_Value

* I think people succeed more because of luck than skills.
    -> Success_Is_Luck

= Don’t_See_The_Value
Skills might seem unimportant now, but they build the foundation for future opportunities. Try focusing on one small skill to start with.
-> AddEdu
-> END

= Success_Is_Luck
Luck can play a role, but skills are what help you take advantage of opportunities when they come. Consider starting small and see where it leads.
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
