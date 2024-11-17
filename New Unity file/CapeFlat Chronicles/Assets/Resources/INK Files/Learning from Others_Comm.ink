INCLUDE Global.ink

// Dialogue 21: Learning from Others
Learning from others can help you grow. Who do you look up to for guidance?

* I look up to my teachers.
    -> Look_Up_To_Teachers

* I don’t really look up to anyone.
    -> No_One_To_Look_Up_To

* I prefer to figure things out myself.
    -> Figure_Out_Myself

// Branch: Look_Up_To_Teachers
= Look_Up_To_Teachers
That’s great! Teachers can provide valuable insights and support. Have you talked to them about your goals?

* I plan to.
    -> Plan_To_Talk

// Sub-Branch: Plan_To_Talk
= Plan_To_Talk
Good! They can guide you on your journey.
-> AddEdu
-> END

// Branch: No_One_To_Look_Up_To
= No_One_To_Look_Up_To
That’s okay, but consider seeking mentors who can help guide you.
-> END

// Branch: Figure_Out_Myself
= Figure_Out_Myself
Independence is important, but learning from others can save you time and effort.
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

