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

* I try to focus on what went wrong and how to fix it.
    -> Focus_On_Fixing

* I ask for advice to avoid similar mistakes.
    -> Ask_For_Advice

= Focus_On_Fixing
Taking responsibility and fixing issues shows strength. Keep at it, and you’ll see progress.
-> AddEdu
-> END

= Ask_For_Advice
Seeking advice is a smart way to learn from mistakes. It shows you’re open to growth.
-> AddEdu
-> END

// Branch: Dwell_On_Mistakes
= Dwell_On_Mistakes
It’s easy to get stuck in that mindset. Consider focusing on solutions instead. What makes it hard to move on?

* I feel like my mistakes define me.
    -> Mistakes_Define_Me

* I don’t know how to let go.
    -> Hard_To_Let_Go

= Mistakes_Define_Me
Remember, your mistakes are just one part of your story. They don’t define who you are.
-> END

= Hard_To_Let_Go
Letting go is tough, but it’s part of growing. Start by forgiving yourself—it’s the first step.
-> END

// Branch: Ignore_And_Move_On
= Ignore_And_Move_On
Ignoring mistakes might feel easier, but it often leads to repeating them. Why do you choose to move on so quickly?

* I don’t want to think about them—it’s too painful.
    -> Too_Painful

* I don’t think they matter in the long run.
    -> They_Dont_Matter

= Too_Painful
Facing mistakes can be hard, but avoiding them only makes things worse over time. Be brave and confront them.
-> AddGang
-> END

= They_Dont_Matter
Every mistake is a lesson waiting to be learned. Don’t dismiss them—they’re stepping stones to success.
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
