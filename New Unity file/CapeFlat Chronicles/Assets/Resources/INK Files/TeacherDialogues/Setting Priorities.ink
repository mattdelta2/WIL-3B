 Setting priorities is important to stay on track. How do you set your priorities?

* I focus on what’s most urgent and important.
    -> Focus_On_Urgent

* I just try to get through whatever is easiest first.
    -> Easiest_First

* I don’t really have a system for prioritizing things.
    -> No_System

= Focus_On_Urgent
 That’s a good way to stay organized. Just make sure you don’t get overwhelmed by too much urgency.
-> END

= Easiest_First
 Sometimes starting with the easiest task can get the ball rolling, but make sure you don’t neglect the important stuff.
-> END

= No_System
 It’s helpful to come up with a plan for prioritizing. Even something simple, like a to-do list, can keep you organized.
-> END


=AddEdu
~EduStat += 1
~GangStat -= 1
~ GangStat = MIN(GangStat,0)
->END

=AddGang
~EduStat -= 1
~ EduStat = MIN(EduStat,0)
~GangStat += 1
->END
