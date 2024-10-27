INCLUDE Global.ink

// Dialogue 4: Facing Challenges
Challenges are part of life. How do you cope when faced with difficulties?

* I try to stay positive and work through them.
    -> Stay_Positive

* I just ignore my problems.
    -> Ignore_Problems

* I let my friends help me.
    -> Friends_Help

// Branch: Stay_Positive
= Stay_Positive
That’s a fantastic approach! Positivity can be a game-changer. What’s the biggest challenge you’re facing now?

* Balancing school and personal life.
    -> Balance_School_Life

// Sub-Branch: Balance_School_Life
= Balance_School_Life
That’s tough, but you can manage it! Have you thought about setting a schedule?
-> AddEdu
-> END

// Branch: Ignore_Problems
= Ignore_Problems
Ignoring them doesn’t help. It’s essential to face challenges head-on, even when it’s tough.
-> END

// Branch: Friends_Help
= Friends_Help
That’s a smart way to cope! Having support is crucial. Just ensure they are a positive influence.
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
