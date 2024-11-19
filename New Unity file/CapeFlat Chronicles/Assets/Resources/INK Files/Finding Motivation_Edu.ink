INCLUDE Global.ink

// Dialogue 16: Finding Motivation
Finding motivation is tough, especially when things seem hopeless. What keeps you motivated?

* I think about my family and how much they want me to succeed.
    -> Family_Motivation

* I try to imagine a better future for myself.
    -> Future_Motivation

* Honestly, I struggle to find motivation most days.
    -> Struggle_Motivation

// Branch: Family Motivation
= Family_Motivation
Family can be a powerful source of motivation. They want the best for you, and their support can push you through tough times. How do they inspire you the most?

* By reminding me of what’s important in life.
    -> Remind_Important

* By supporting me when I’m struggling.
    -> Family_Support

= Remind_Important
That’s beautiful. Keep their reminders close to your heart—they’ll guide you even when things feel uncertain.
-> AddEdu
-> END

= Family_Support
Having their support means you’re never alone. Use their strength to build your own.
-> AddEdu
-> END

// Branch: Future Motivation
= Future_Motivation
Imagining a better future is an excellent motivator. What does that future look like to you?

* A life where I’m happy and secure.
    -> Happy_Secure_Life

* A chance to help others and make a difference.
    -> Help_Others

= Happy_Secure_Life
That’s a wonderful goal. Keep that vision alive—it will remind you why you’re working so hard.
-> AddEdu
-> END

= Help_Others
Helping others is a noble ambition. Remember, every step you take toward your future brings you closer to making a difference.
-> AddEdu
-> END

// Branch: Struggle Motivation
= Struggle_Motivation
It’s okay to struggle. You’re not alone—many people feel the same way. Have you thought about setting smaller, achievable goals to get started?

* I’ve thought about it, but it feels pointless sometimes.
    -> Pointless_Goals

* Maybe I should give that a try.
    -> Give_Try

* Could you help me set a small goal?
    -> Start_SmallWins_Quest

= Pointless_Goals
It might seem pointless, but even small wins can give you a sense of progress. Don’t underestimate the power of taking one step at a time.
-> AddGang
-> END

= Give_Try
That’s the spirit! Start small, and you’ll build momentum. Each step forward makes the next one easier.
-> AddEdu
-> END

= Start_SmallWins_Quest
Of course! Let’s set a small, manageable goal together. How about something simple you can accomplish this week?

* Yes, I’ll give it a try.
    -> Accept_SmallWins_Quest

* No, I don’t think I need this.
    -> Decline_SmallWins_Quest

= Accept_SmallWins_Quest
Great! Even the smallest win can make a big difference. Let’s check in next time to see how it’s going.
-> AddEdu
-> END

= Decline_SmallWins_Quest
That’s okay. Just remember, even small efforts can lead to big changes over time.
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
