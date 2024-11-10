INCLUDE Global.ink

Finding motivation is tough, especially when things seem hopeless. What keeps you motivated?

* I think about my family and how much they want me to succeed.
    -> Family_Motivation

* I try to imagine a better future for myself.
    -> Future_Motivation

* Honestly, I struggle to find motivation most days.
    -> Struggle_Motivation

= Family_Motivation
 Family can be a powerful source of motivation. Keep their support close and use it to push through tough times.
-> END

= Future_Motivation
 Imagining a better future is an excellent motivator. The more you work towards it, the clearer that vision will become.
-> END

= Struggle_Motivation
 It’s okay to struggle. You’re not alone, and many people feel the same way. Have you tried setting smaller, achievable goals to get started?

* I’ve thought about it, but it feels pointless sometimes.
    -> Pointless_Goals

* Maybe I should give that a try.
    -> Give_Try

* {smallWinsQuestStarted == false} Could you help me set a small goal?
    -> Start_SmallWins_Quest

= Pointless_Goals
 It might seem pointless, but achieving even the smallest goals can give you a sense of progress. Don’t underestimate the power of small wins.
-> END

= Give_Try
 That’s the spirit. Start small, and you’ll build momentum. Even tiny steps will bring you closer to your goals.
-> END

// Quest Integration: Small Wins Quest
= Start_SmallWins_Quest
Teacher: I’d be happy to help you set a small, manageable goal. Let’s start with something simple that you can accomplish this week.
~ smallWinsQuestStarted = true
* Yes, I’ll give it a try.
    -> Accept_SmallWins_Quest
* No, I don’t think I need this.
    -> Decline_SmallWins_Quest

= Accept_SmallWins_Quest
Teacher: Great! Even the smallest win can make a big difference. Let’s check in next time to see how it’s going.
~ smallWinsQuestCompleted = true
-> AddEdu

= Decline_SmallWins_Quest
Teacher: That’s okay. Just remember, it’s often the little things that make the biggest difference over time.
-> AddGang

=AddEdu
~EduStat += 1
~ GangStat = MIN(GangStat,0)
->END

=AddGang
~EduStat = MIN(EduStat,0)
~GangStat += 1
->END
