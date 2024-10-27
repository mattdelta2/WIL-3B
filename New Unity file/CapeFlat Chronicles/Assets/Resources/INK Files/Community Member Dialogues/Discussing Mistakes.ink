INCLUDE Global.ink

// Dialogue 14: Discussing Mistakes
We all make mistakes. How do you learn from yours?

* I reflect on what went wrong and try not to repeat it.
    -> Reflect_Mistakes

* I tend to forget about my mistakes.
    -> Forget_Mistakes

* I don’t want to think about my mistakes.
    -> Ignore_Mistakes

// Branch: Reflect_Mistakes
= Reflect_Mistakes
That’s a great way to grow! Reflection can lead to valuable lessons.

* I’ll make sure to think about my choices more.
    -> Think_Choices

// Sub-Branch: Think_Choices
= Think_Choices
Good! Learning from mistakes is part of the journey.
-> AddEdu
-> END

// Branch: Forget_Mistakes
= Forget_Mistakes
That’s common, but acknowledging them can prevent future issues. Have you thought about keeping a journal?
-> END

// Branch: Ignore_Mistakes
= Ignore_Mistakes
Ignoring them won’t help. Facing them can help you avoid repeating them.
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
