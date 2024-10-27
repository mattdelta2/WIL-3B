INCLUDE Global.ink

// Normal dialogue
Balancing life and school can be challenging. How do you manage everything on your plate?

* I try to make a schedule and stick to it.
    -> Make_Schedule

* I just do whatever feels right at the moment.
    -> No_Plan

* I feel like I’m constantly overwhelmed.
    -> Constantly_Overwhelmed

// Quest-specific option
* {teacherQuestStarted == false} Could you help me with a study plan?
    -> Start_Teacher_Quest

// Quest in-progress dialogue
* {teacherQuestStarted == true && teacherQuestCompleted == false} I tried the study plan, but I'm still struggling.
    -> Quest_Help_Progress

// Dialogue options based on quest completion
* {teacherQuestCompleted == true} Thanks for your help with the study plan; it's really working!
    -> Quest_Completed_Response

= Make_Schedule
 That’s a solid approach. Having a plan can keep you on track even when things get tough. Just remember to adjust if things don’t go as expected.
 ->AddEdu
-> END

= No_Plan
 Living in the moment has its perks, but it can also create chaos. Setting a few goals or having a basic plan might help you find more balance.
 ->AddGang
-> END

= Constantly_Overwhelmed
 Feeling overwhelmed is normal when there’s too much on your plate. Have you tried reaching out to others for support?

* I’m not good at asking for help.
    -> Not_Ask_Help

* I guess I could give it a try.
    -> Try_Asking

= Not_Ask_Help
 I understand, but remember that everyone needs help sometimes. It’s okay to lean on others.
 ->AddGang
-> END

= Try_Asking
 That’s a great first step. Support from others can make all the difference when you’re feeling overwhelmed.
 ->AddEdu
-> END

// Start Teacher Quest
= Start_Teacher_Quest
 I'm glad you're interested in a study plan! We’ll start with something simple.
~ teacherQuestStarted = true
-> END

// Quest help progress dialogue
= Quest_Help_Progress
 Hang in there! Let’s review and adjust the plan to better fit your schedule.
~ EduStat += 1
~ GangStat -= 1
~ GangStat = MAX(GangStat, 0)
-> Complete_Teacher_Quest

= Complete_Teacher_Quest
~ teacherQuestCompleted = true
You’re doing great! Keep up the hard work, and it will all pay off.
-> END

// Quest completed response
= Quest_Completed_Response
I'm so happy to hear the study plan is helping you. Stay dedicated, and remember I'm here if you need further support.
-> END

= AddEdu
~ EduStat += 1
~ GangStat -= 1
~ GangStat = MAX(GangStat, 0)
-> END

= AddGang
~ EduStat -= 1
~ EduStat = MAX(EduStat, 0)
~ GangStat += 1
-> END
