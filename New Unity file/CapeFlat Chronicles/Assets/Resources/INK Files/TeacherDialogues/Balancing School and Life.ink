INCLUDE Global.ink
 
 
 Balancing life and school can be challenging. How do you manage everything on your plate?

* I try to make a schedule and stick to it.
    -> Make_Schedule

* I just do whatever feels right at the moment.
    -> No_Plan

* I feel like I’m constantly overwhelmed.
    -> Constantly_Overwhelmed

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
