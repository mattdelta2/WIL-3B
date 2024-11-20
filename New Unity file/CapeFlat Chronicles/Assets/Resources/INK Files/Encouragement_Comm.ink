INCLUDE Global.ink

// Dialogue 11: Encouragement
Sometimes we all need a little encouragement. What keeps you motivated?

* I remind myself of my goals.
    -> Remind_Goals

* I struggle to stay motivated sometimes.
    -> Struggle_Motivation

* I don’t really feel motivated.
    -> No_Motivation

// Branch: Remind Goals
= Remind_Goals
That’s a solid strategy! Keeping your goals in mind can drive you forward. What motivates you the most about your goals?

* The thought of achieving something I’ve worked hard for.
    -> Achieve_Success

* Making my family proud.
    -> Make_Family_Proud

= Achieve_Success
That’s wonderful! Hard work and dedication always pay off in the end. Stay focused.
-> AddEdu
-> END

= Make_Family_Proud
Wanting to make your family proud is a powerful motivator. Use it to keep pushing forward.
-> AddEdu
-> END

// Branch: Struggle Motivation
= Struggle_Motivation
That’s normal! Everyone struggles sometimes. What do you think makes it hard for you to stay motivated?

* I get overwhelmed by everything I have to do.
    -> Overwhelmed

* I don’t feel like I’m making progress.
    -> Lack_Of_Progress

= Overwhelmed
Feeling overwhelmed can be tough. Breaking tasks into smaller steps can make them feel more manageable.
-> AddEdu
-> END

= Lack_Of_Progress
It’s hard to stay motivated when progress feels slow. Remember, even small steps move you forward.
-> AddEdu
-> END

// Branch: No Motivation
= No_Motivation
Finding motivation can be tough. What do you think might help you get started?

* Trying something new that excites me.
    -> Try_Something_New

* I’m not sure. I just feel stuck.
    -> Feel_Stuck

= Try_Something_New
Exploring new interests can reignite your spark. Take a small step and see where it leads.
-> AddEdu
-> END

= Feel_Stuck
Feeling stuck is hard, but taking one small action can start a chain of positive changes. Don’t be afraid to ask for help.
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
