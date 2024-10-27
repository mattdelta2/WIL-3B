INCLUDE Global.ink

// Dialogue 28: Learning from Mistakes
Mistakes are part of learning. How do you respond when you make one?

* I reflect on it and try to improve.
    -> Reflect_And_Improve

* I tend to dwell on my mistakes.
    -> Dwell_On_Mistakes

* I ignore them and move on.
    -> Ignore_And_Move_On

// Branch: Reflect_And_Improve
= Reflect_And_Improve
That’s a great approach! Reflecting can lead to growth and better decisions next time.

* I believe in learning from my errors.
    -> Believe_In_Learning

// Sub-Branch: Believe_In_Learning
= Believe_In_Learning
Exactly! That mindset will take you far.
-> AddEdu
-> END

// Branch: Dwell_On_Mistakes
= Dwell_On_Mistakes
It’s easy to get stuck in that mindset. Consider focusing on solutions instead.
-> END

// Branch: Ignore_And_Move_On
= Ignore_And_Move_On
Ignoring mistakes can lead to repeating them. It’s important to address them.
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
