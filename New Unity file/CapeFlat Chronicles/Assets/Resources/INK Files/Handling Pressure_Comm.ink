INCLUDE Global.ink

// Dialogue 12: Handling Pressure
Pressure can be overwhelming. How do you handle stress in your life?

* I try to stay calm and breathe through it.
    -> Stay_Calm

* I often bottle up my stress.
    -> Bottle_Up

* I just ignore it and hope it goes away.
    -> Ignore_Stress

= Stay_Calm
That’s a great technique! Breathing exercises can help reduce stress. Do you practice any?

* Yes, I try to take deep breaths when I feel anxious.
    -> Deep_Breaths

* No, but I’ve thought about starting.
    -> Consider_Breathing

= Deep_Breaths
Perfect! That can really help you stay centered. Keep practicing—it gets easier with time.
-> AddEdu
-> END

= Consider_Breathing
It’s never too late to start! Even just a few moments a day can make a big difference.
-> AddEdu
-> END

= Bottle_Up
Bottling up your stress might seem easier in the moment, but it can take a toll on you later. Why do you think you keep it inside?

* I don’t want to bother anyone with my problems.
    -> Dont_Want_To_Bother

* I feel like nobody would understand.
    -> Feel_Misunderstood

= Dont_Want_To_Bother
You’re never a burden to the people who care about you. Sharing can lighten the load.
-> AddEdu
-> END

= Feel_Misunderstood
Even if it feels that way, someone out there will always listen. Don’t carry it all on your own.
-> END

= Ignore_Stress
Ignoring stress might feel like the easiest option, but it can build up over time. Have you considered finding ways to deal with it?

* No, I don’t think it’s necessary.
    -> Avoid_Stress_Management

* Maybe, but I don’t know where to start.
    -> Need_Starting_Point

= Avoid_Stress_Management
Ignoring it might work for now, but remember, the weight of stress only grows heavier over time.
-> AddGang
-> END

= Need_Starting_Point
Start small. Even just taking a few minutes to reflect on what’s stressing you out can help you begin to handle it better.
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
