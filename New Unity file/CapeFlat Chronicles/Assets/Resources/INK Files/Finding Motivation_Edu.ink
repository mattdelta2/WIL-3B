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
-> AddEdu
-> END

= Future_Motivation
Imagining a better future is an excellent motivator. The more you work towards it, the clearer that vision will become.
-> AddEdu
-> END

= Struggle_Motivation
It’s okay to struggle. You’re not alone, and many people feel the same way. Have you tried setting smaller, achievable goals to get started?

* I’ve thought about it, but it feels pointless sometimes.
    -> Pointless_Goals

* Maybe I should give that a try.
    -> Give_Try

* Could you help me set a small goal?
    -> Start_SmallWins_Quest

= Pointless_Goals
It might seem pointless, but achieving even the smallest goals can give you a sense of progress. Don’t underestimate the power of small wins.
-> AddGang
-> END

= Give_Try
That’s the spirit. Start small, and you’ll build momentum. Even tiny steps will bring you closer to your goals.
-> AddEdu
-> END

= Start_SmallWins_Quest
Sure, let’s set a small, manageable goal together. Let’s start with something simple that you can accomplish this week.

* Yes, I’ll give it a try.
    -> Accept_SmallWins_Quest

* No, I don’t think I need this.
    -> Decline_SmallWins_Quest

= Accept_SmallWins_Quest
Great! Even the smallest win can make a big difference. Let’s check in next time to see how it’s going.
-> AddEdu
-> END

= Decline_SmallWins_Quest
That’s okay. Just remember, it’s often the little things that make the biggest difference over time.
-> AddGang
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat, 0) // Ensures GangStat doesn’t drop below 0
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat, 0) // Ensures EduStat doesn’t drop below 0
-> END
