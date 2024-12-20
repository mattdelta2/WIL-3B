INCLUDE Global.ink

// Dialogue 1: Balancing Life and School
Balancing life and school can be challenging. How do you manage everything on your plate?

* I try to make a schedule and stick to it.
    -> Make_Schedule

* I just do whatever feels right at the moment.
    -> No_Plan

* I feel like I’m constantly overwhelmed.
    -> Constantly_Overwhelmed

// Branch: Make_Schedule
= Make_Schedule
That’s a solid approach. Having a plan can keep you on track even when things get tough. Just remember to adjust if things don’t go as expected.
-> AddEdu
-> END

// Branch: No_Plan
= No_Plan
Living in the moment has its perks, but it can also create chaos. Setting a few goals or having a basic plan might help you find more balance.
-> AddGang
-> END

// Branch: Constantly_Overwhelmed
= Constantly_Overwhelmed
Feeling overwhelmed is normal when there’s too much on your plate. Have you tried reaching out to others for support?

* I’m not good at asking for help.
    -> Not_Ask_Help

* I guess I could give it a try.
    -> Try_Asking

= Not_Ask_Help
I understand, but remember that everyone needs help sometimes. It’s okay to lean on others.
-> AddGang
-> END

= Try_Asking
That’s a great first step. Support from others can make all the difference when you’re feeling overwhelmed.
-> AddEdu
-> END

// Quest: Study Plan
* Could you help me with a study plan?
    -> Start_Teacher_Quest

= Start_Teacher_Quest
I'm glad you're interested in a study plan! Let’s create a simple one together.

-> Teacher_Quest_Advice

= Teacher_Quest_Advice
Let’s start with setting small, achievable goals. Consistency is key.

* I’ll try to stick to it, but it’s hard.
    -> Quest_Struggle

* I’ll stay committed and check in with you.
    -> Quest_Commited

= Quest_Struggle
It’s okay if it’s challenging. I’m here to help you through it.
-> Quest_Help_Progress

= Quest_Commited
Great attitude! Staying committed is the best way to see progress.
-> Quest_Help_Progress

= Quest_Help_Progress
Hang in there! Let’s review and adjust the plan to better fit your schedule.
~ EduStat += 1
-> Complete_Teacher_Quest

= Complete_Teacher_Quest
Well done on sticking with it! Remember, consistency will make a huge difference.
-> END

// Quest completed response
* Thanks for your help with the study plan; it's really working!
    -> Quest_Completed_Response

= Quest_Completed_Response
I'm so happy to hear the study plan is helping you. Stay dedicated, and remember I'm here if you need further support.
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
