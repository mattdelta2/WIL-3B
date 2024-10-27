INCLUDE Global.ink

// Dialogue 23: Developing Skills
Developing skills is essential for your future. What skills are you currently working on?

* I’m trying to improve my communication skills.
    -> Improve_Communication

* I’m not working on any specific skills.
    -> No_Specific_Skills

* I don’t think skills matter much.
    -> Skills_Dont_Matter

// Branch: Improve_Communication
= Improve_Communication
That’s a valuable skill! Have you considered joining a public speaking club?

* I haven’t, but I might.
    -> Public_Speaking_Club

// Sub-Branch: Public_Speaking_Club
= Public_Speaking_Club
Great! It can build confidence and improve your communication.
-> AddEdu
-> END

// Branch: No_Specific_Skills
= No_Specific_Skills
That’s okay! It might help to explore different activities to find what you enjoy.
-> END

// Branch: Skills_Don’t_Matter
= Skills_Dont_Matter
Skills are essential for success in many areas of life. Consider what interests you!
-> AddGang
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END
