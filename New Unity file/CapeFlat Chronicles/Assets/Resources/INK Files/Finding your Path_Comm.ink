INCLUDE Global.ink

// Dialogue 8: Finding Your Path
Finding your path can be challenging. What steps are you taking to explore your options?

* I’m researching different career paths.
    -> Researching_Careers

* I’m not sure where to start.
    -> Not_Sure_Start

* I just want to figure it out as I go.
    -> Figure_Out_As_I_Go

// Branch: Researching_Careers
= Researching_Careers
That’s a smart move! Researching can provide clarity. What careers are you interested in?

* I’m thinking about becoming a teacher.
    -> Teaching_Path

// Sub-Branch: Teaching_Path
= Teaching_Path
Teaching is a noble profession! It makes a difference in people's lives.
-> AddEdu
-> END

// Branch: Not_Sure_Start
= Not_Sure_Start
That’s okay! Sometimes talking to people in different fields can help you find direction.
-> END

// Branch: Figure_Out_As_I_Go
= Figure_Out_As_I_Go
That can work, but having a plan can make it easier to reach your goals.
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

