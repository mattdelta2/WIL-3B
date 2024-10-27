INCLUDE Global.ink

// Dialogue 11: Encouragement
Sometimes we all need a little encouragement. What keeps you motivated?

* I remind myself of my goals.
    -> Remind_Goals

* I struggle to stay motivated sometimes.
    -> Struggle_Motivation

* I don’t really feel motivated.
    -> No_Motivation

// Branch: Remind_Goals
= Remind_Goals
That’s a solid strategy! Keeping your goals in mind can drive you forward.

* It helps me stay focused.
    -> Stay_Focused

// Sub-Branch: Stay_Focused
= Stay_Focused
Good! Keep that focus sharp, and you’ll reach your goals.
-> AddEdu
-> END

// Branch: Struggle_Motivation
= Struggle_Motivation
That’s normal! Try surrounding yourself with positive influences. It can help keep your spirits up.
-> END

// Branch: No_Motivation
= No_Motivation
Finding motivation can be tough. Let’s explore what interests you to ignite that spark.
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
