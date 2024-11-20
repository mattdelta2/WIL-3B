INCLUDE Global.ink

// Dialogue 8: Finding Your Path
Finding your path can be challenging. What steps are you taking to explore your options?

* I’m researching different career paths.
    -> Researching_Careers

* I’m not sure where to start.
    -> Not_Sure_Start

* I just want to figure it out as I go.
    -> Figure_Out_As_I_Go

// Branch: Researching Careers
= Researching_Careers
That’s a smart move! Researching can provide clarity. What careers are you interested in?

* I’m thinking about becoming a teacher.
    -> Teaching_Path

* I’m interested in something creative, like art or music.
    -> Creative_Path

= Teaching_Path
Teaching is a noble profession! It makes a difference in people's lives and shapes the future.
-> AddEdu
-> END

= Creative_Path
Creative fields are rewarding, but they require passion and dedication. Explore your talents, and don’t be afraid to take risks.
-> AddEdu
-> END

// Branch: Not Sure Where to Start
= Not_Sure_Start
That’s okay! Finding your path takes time. Have you tried talking to people in different fields or exploring hobbies?

* I haven’t, but I could give that a try.
    -> Explore_Hobbies

* I’m not sure that will help me.
    -> Unsure_If_Help

= Explore_Hobbies
Great idea! Exploring hobbies can sometimes lead to unexpected opportunities.
-> AddEdu
-> END

= Unsure_If_Help
That’s understandable, but sometimes stepping outside your comfort zone can provide new insights.
-> AddGang
-> END

// Branch: Figure It Out As I Go
= Figure_Out_As_I_Go
That’s a flexible approach, but having a basic plan can make it easier to spot opportunities and achieve your goals.

* I’ll think about making a plan.
    -> Consider_Plan

* I’m not really a planner.
    -> Not_A_Planner

= Consider_Plan
Thinking ahead is a great start. Even a loose plan can help you stay on track.
-> AddEdu
-> END

= Not_A_Planner
That’s okay, but keep in mind that a little structure can go a long way.
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
