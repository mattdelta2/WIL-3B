INCLUDE Global.ink

// Dialogue 14: Discussing Mistakes
We all make mistakes. How do you learn from yours?

* I reflect on what went wrong and try not to repeat it.
    -> Reflect_Mistakes

* I tend to forget about my mistakes.
    -> Forget_Mistakes

* I don’t want to think about my mistakes.
    -> Ignore_Mistakes

// Branch: Reflect Mistakes
= Reflect_Mistakes
That’s a great way to grow! Reflection can lead to valuable lessons. What helps you the most when reflecting on mistakes?

* Thinking about how I could have handled things differently.
    -> Handle_Differently

* Talking to someone for advice or perspective.
    -> Seek_Advice

= Handle_Differently
That’s a thoughtful approach. Considering alternative actions helps you make better choices in the future.
-> AddEdu
-> END

= Seek_Advice
Seeking advice shows wisdom. Others’ perspectives can give you valuable insights.
-> AddEdu
-> END

// Branch: Forget Mistakes
= Forget_Mistakes
That’s common, but acknowledging mistakes can prevent future issues. What makes it hard for you to focus on them?

* I feel embarrassed when I think about them.
    -> Embarrassed_By_Mistakes

* I don’t know how to deal with them.
    -> Dont_Know_How

= Embarrassed_By_Mistakes
It’s natural to feel embarrassed, but mistakes are part of being human. Facing them with courage can help you grow.
-> AddEdu
-> END

= Dont_Know_How
Not knowing how to deal with mistakes can feel overwhelming, but taking small steps to reflect can make it easier.
-> AddEdu
-> END

// Branch: Ignore Mistakes
= Ignore_Mistakes
Ignoring mistakes might seem easier, but it doesn’t help you grow. What’s stopping you from facing them?

* I’m afraid of failing again.
    -> Fear_Of_Failure

* I don’t think my mistakes are important enough to address.
    -> Mistakes_Not_Important

= Fear_Of_Failure
Fear of failure can hold you back, but every mistake is an opportunity to learn and improve.
-> AddGang
-> END

= Mistakes_Not_Important
Even small mistakes matter. Recognizing them can help you make better decisions moving forward.
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
