INCLUDE Global.ink


// Dialogue 17: Planning for the Future
Planning for the future is important, my child. It gives you direction and purpose. How do you think about your future?

* I try to set clear goals and work towards them.
    -> Set_Clear_Goals

* I don’t think about it much. I just live day by day.
    -> Live_Day_By_Day

* I feel overwhelmed thinking about the future.
    -> Overwhelmed_By_Future

// Branch: Set_Clear_Goals
= Set_Clear_Goals
That’s a strong way to approach life. Goals give you something to strive for. What’s your biggest goal right now?

* I want to leave this place and build a better life.
    -> Build_Better_Life

* I want to make my family proud.
    -> Make_Family_Proud

= Build_Better_Life
That’s a powerful dream, and it’s within your reach. Just remember, the path might not be easy, but it’s worth it.
-> AddEdu
-> END

= Make_Family_Proud
That’s a beautiful goal. Let their support and love guide you as you work towards your dreams.
-> AddEdu
-> END

// Branch: Live_Day_By_Day
= Live_Day_By_Day
Living day by day might seem easier, but without a plan, life can drift away from you. Why don’t you plan for the future?

* I’m scared of failing if I plan too much.
    -> Scared_Of_Failing_To_Plan

* I don’t know where to start.
    -> Dont_Know_Where_To_Start

= Scared_Of_Failing_To_Plan
Failure is part of life, my child. The only true failure is not trying. You’re stronger than you think.
-> AddEdu
-> END

= Dont_Know_Where_To_Start
That’s okay. Start small. Think about one thing you’d like to change and work towards it.
-> AddEdu
-> END

// Branch: Overwhelmed_By_Future
= Overwhelmed_By_Future
The future can feel overwhelming, but breaking it into smaller steps makes it manageable. What’s overwhelming you the most?

* I feel like there’s too much I need to do.
    -> Too_Much_To_Do

* I’m not sure what I really want.
    -> Not_Sure_What_I_Want

= Too_Much_To_Do
Focus on one thing at a time. You don’t have to do everything all at once. Take it step by step.
-> AddEdu
-> END

= Not_Sure_What_I_Want
That’s normal, my child. Take time to explore your interests and values. You’ll find clarity as you move forward.
-> AddEdu
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
