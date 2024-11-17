INCLUDE Global.ink

// Dialogue 2: Discussing Future Aspirations
What are your dreams for the future? Have you thought about what you want to achieve?

* I want to finish school and go to university.
    -> University_Goal

* I just want to make money and not worry about school.
    -> Focus_Money

* I don’t really have any dreams.
    -> No_Dreams

// Branch: University_Goal
= University_Goal
That’s an excellent goal! Education can open many doors. Have you looked into scholarship opportunities?

* I haven’t, but I’ll check it out.
    -> Check_Scholarships

// Sub-Branch: Check_Scholarships
= Check_Scholarships
Perfect! I can help you with resources if you need them.
-> AddEdu
-> END

// Branch: Focus_Money
= Focus_Money
That’s a common feeling, but education can help you earn more in the long run. Have you thought about how to balance both?
-> END

// Branch: No_Dreams
= No_Dreams
That’s okay. Sometimes, it takes time to figure things out. Why not try a few different things and see what sparks your interest?
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

