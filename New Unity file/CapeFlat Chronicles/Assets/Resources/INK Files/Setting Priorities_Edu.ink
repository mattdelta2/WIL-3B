INCLUDE Global.ink

// Dialogue: Setting Priorities
Setting priorities is important to stay on track. How do you set your priorities?

* I focus on what’s most urgent and important.
    -> Focus_On_Urgent

* I just try to get through whatever is easiest first.
    -> Easiest_First

* I don’t really have a system for prioritizing things.
    -> No_System

= Focus_On_Urgent
That’s a good way to stay organized. Just make sure you don’t get overwhelmed by too much urgency.

* Could you guide me through a prioritization exercise?
    -> Start_Teacher_Priority_Quest

-> END

= Easiest_First
Sometimes starting with the easiest task can get the ball rolling, but make sure you don’t neglect the important stuff.
-> END

= No_System
It’s helpful to come up with a plan for prioritizing. Even something simple, like a to-do list, can keep you organized.
-> END

// Start Teacher Priority Quest
= Start_Teacher_Priority_Quest
Great! Let's try a quick exercise. Imagine you have three tasks: a math assignment due tomorrow, reading a chapter for English due in two days, and preparing for a science quiz next week. What would you prioritize first?

* I’d start with the math assignment, then read for English, and finally prepare for the quiz.
    -> Prioritize_Effectively

* I’d start with reading for English, then prepare for the quiz, and finally the math assignment.
    -> Prioritize_Less_Effectively

// Effective Prioritization
= Prioritize_Effectively
Well done! Focusing on immediate deadlines is a smart approach. Keep this up, and it’ll make your workload more manageable.
-> AddEdu
-> Complete_Teacher_Priority_Quest

// Less Effective Prioritization
= Prioritize_Less_Effectively
That’s a start, but it’s essential to focus on immediate priorities first. Keep practicing, and you’ll get the hang of it.
-> AddGang
-> Complete_Teacher_Priority_Quest

// Quest Completion
= Complete_Teacher_Priority_Quest
Great work on the exercise! Prioritizing effectively takes practice, but you’re on the right track.
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MIN(GangStat, 0)
-> END

= AddGang
~ EduStat = MIN(EduStat, 0)
~ GangStat += 1
-> END
