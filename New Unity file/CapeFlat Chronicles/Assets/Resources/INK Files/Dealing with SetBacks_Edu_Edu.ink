INCLUDE Global.ink

Setbacks happen to everyone, but how we react to them defines our path. How do you usually deal with setbacks?

* I try to learn from my mistakes and do better next time.
    -> Learn_From_Mistakes

* I get frustrated and give up.
    -> Give_Up

* I take some time and try again later.
    -> Take_Time

= Learn_From_Mistakes
 That’s a great mindset to have. Learning from your mistakes will only make you stronger in the future.
-> END

= Give_Up
 Giving up may feel easier, but it won’t get you anywhere. How about a challenge? Set a small goal for yourself, something achievable, and stick with it even if it’s tough. Are you willing to give it a try?

* Yes, I’ll give it a try.
    -> Resilience_Encouragement
    Teacher: That’s the spirit! Resilience isn’t about avoiding failure, it’s about bouncing back.

* I’m not sure if I can do it.
    -> AddGang
    Teacher: I understand, but remember, even small efforts can make a big difference over time.

= Resilience_Encouragement
-> AddEdu
 Teacher: Great! Let me know how it went next time we talk. Even if things don’t go perfectly, trying is what matters most.
-> END

= Take_Time
 Taking time to regroup can be wise. Sometimes, stepping away gives us the clarity we need to succeed.
-> END

=AddEdu
~EduStat += 1
~GangStat = MIN(GangStat,0)
->END

=AddGang
~EduStat = MIN(EduStat,0)
~GangStat += 1
->END
