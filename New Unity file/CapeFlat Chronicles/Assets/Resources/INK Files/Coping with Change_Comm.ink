INCLUDE Global.ink

// Dialogue 22: Coping with Change
Change can be difficult. How do you cope with changes in your life?

* I try to stay adaptable.
    -> Stay_Adaptable

* I find it hard to adjust.
    -> Hard_To_Adjust

* I avoid change whenever I can.
    -> Avoid_Change

// Branch: Stay_Adaptable
= Stay_Adaptable
That’s an excellent mindset! Adapting can help you navigate challenges more smoothly. How do you approach change?

* I’ve learned to embrace it.
    -> Embrace_Change

* I try to take it one step at a time.
    -> Step_By_Step

= Embrace_Change
Good for you! Embracing change is key to personal growth.
-> AddEdu
-> END

= Step_By_Step
That’s a great approach. Breaking changes into smaller steps can make them feel more manageable.
-> AddEdu
-> END

// Branch: Hard_To_Adjust
= Hard_To_Adjust
That’s understandable. Adjusting to change takes time. What’s the hardest part for you?

* I don’t like leaving my comfort zone.
    -> Comfort_Zone

* I worry about failing when things change.
    -> Fear_Of_Failure

= Comfort_Zone
Leaving your comfort zone is tough, but it’s where growth happens. Start with small changes to ease into it.
-> AddEdu
-> END

= Fear_Of_Failure
It’s natural to fear failure, but every mistake is a learning opportunity. Focus on the lessons, not the setbacks.
-> AddEdu
-> END

// Branch: Avoid_Change
= Avoid_Change
Avoiding change can lead to missed opportunities. What makes you avoid it?

* I like things to stay predictable.
    -> Prefer_Predictability

* I don’t feel ready for change.
    -> Not_Ready_For_Change

= Prefer_Predictability
Predictability feels safe, but it can also hold you back. Consider trying small, manageable changes to get started.
-> AddGang
-> END

= Not_Ready_For_Change
That’s okay. Change takes time. When you’re ready, start with one step at a time.
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
