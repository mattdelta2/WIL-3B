INCLUDE Global.ink

Setbacks happen to everyone, but how we react to them defines our path. How do you usually deal with setbacks?

* I try to learn from my mistakes and do better next time.
    -> Learn_From_Mistakes

* I get frustrated and give up.
    -> Give_Up

* I take some time and try again later.
    -> Take_Time

= Learn_From_Mistakes
That’s a great mindset to have. Learning from your mistakes will only make you stronger in the future. What helps you reflect the most?

* Thinking about what I could have done differently.
    -> Reflect_On_Mistakes

* Asking for advice from someone I trust.
    -> Seek_Advice

= Reflect_On_Mistakes
Reflection is a powerful tool. Keep analyzing your actions, and you’ll continue to grow.
-> AddEdu
-> END

= Seek_Advice
Seeking advice shows wisdom. Learning from others can give you valuable perspectives.
-> AddEdu
-> END

= Give_Up
Giving up may feel easier, but it won’t get you anywhere. How about a challenge? Set a small goal for yourself, something achievable, and stick with it even if it’s tough. Are you willing to give it a try?

* Yes, I’ll give it a try.
    -> Resilience_Encouragement

* I’m not sure if I can do it.
    -> Hesitant_To_Try

= Resilience_Encouragement
That’s the spirit! Resilience isn’t about avoiding failure; it’s about bouncing back.
-> AddEdu
-> END

= Hesitant_To_Try
I understand, but remember, even small efforts can make a big difference over time. Start when you’re ready.
-> AddGang
-> END

= Take_Time
Taking time to regroup can be wise. Sometimes, stepping away gives us the clarity we need to succeed. What do you do during that time?

* I think about how I can approach the problem differently.
    -> Plan_New_Strategy

* I focus on something else to clear my mind.
    -> Clear_Mind

= Plan_New_Strategy
Planning a new strategy is a smart way to tackle setbacks. Preparation leads to success.
-> AddEdu
-> END

= Clear_Mind
Sometimes stepping away and clearing your mind is all you need. Just make sure to come back stronger.
-> AddEdu
-> END

= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END
