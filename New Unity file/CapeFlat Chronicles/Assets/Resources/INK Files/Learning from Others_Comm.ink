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

* Not yet, but I’ll make an effort.
    -> Make_An_Effort

* I already have, and it’s been helpful.
    -> Already_Helpful

= Make_An_Effort
Good! Taking that first step can open many doors.
-> AddEdu
-> END

= Already_Helpful
That’s excellent! Keep reaching out—you never know how they can help you next.
-> AddEdu
-> END

// Branch: No_One_To_Look_Up_To
= No_One_To_Look_Up_To
That’s okay, but consider this: mentors don’t have to be perfect—they just need to have experience you can learn from. What’s stopping you from seeking guidance?

* I don’t know where to start.
    -> Dont_Know_Where_To_Start

* I don’t trust people enough.
    -> Dont_Trust_People

= Dont_Know_Where_To_Start
Start small. Think about someone whose advice you’ve appreciated, even once. That’s a good place to begin.
-> END

= Dont_Trust_People
Trust takes time, but finding someone to guide you can make a huge difference. Give it a chance.
-> END

// Branch: Figure_Out_Myself
= Figure_Out_Myself
Independence is important, but learning from others can save you time and effort. Why do you prefer to go it alone?

* I feel like no one understands me.
    -> No_One_Understands

* I don’t want to depend on anyone.
    -> Dont_Want_To_Depend

= No_One_Understands
Sometimes it feels that way, but you might be surprised how much people can relate if you give them a chance.
-> AddGang
-> END

= Dont_Want_To_Depend
Being self-reliant is admirable, but don’t let pride stop you from accepting help when it’s offered.
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
