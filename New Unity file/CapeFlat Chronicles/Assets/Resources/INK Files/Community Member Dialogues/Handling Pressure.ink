INCLUDE Global.ink

// Dialogue 12: Handling Pressure
Pressure can be overwhelming. How do you handle stress in your life?

* I try to stay calm and breathe through it.
    -> Stay_Calm

* I often bottle up my stress.
    -> Bottle_Up

* I just ignore it and hope it goes away.
    -> Ignore_Stress

// Branch: Stay_Calm
= Stay_Calm
That’s a great technique! Breathing exercises can help reduce stress. Do you practice any?

* I try to take deep breaths when I feel anxious.
    -> Deep_Breaths

// Sub-Branch: Deep_Breaths
= Deep_Breaths
Perfect! That can really help you stay centered.
-> AddEdu
-> END

// Branch: Bottle_Up
= Bottle_Up
That can lead to bigger issues down the line. It’s essential to talk about what’s bothering you.
-> END

// Branch: Ignore_Stress
= Ignore_Stress
Ignoring it might seem easier, but dealing with it head-on can lead to a healthier mindset.
-> AddGang
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END
