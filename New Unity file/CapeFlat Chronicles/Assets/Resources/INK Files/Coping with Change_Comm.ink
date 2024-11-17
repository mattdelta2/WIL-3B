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
That’s an excellent mindset! Adapting can help you navigate challenges more smoothly.

* I’ve learned to embrace change.
    -> Embrace_Change

// Sub-Branch: Embrace_Change
= Embrace_Change
Good for you! Embracing change is key to personal growth.
-> AddEdu
-> END

// Branch: Hard_To_Adjust
= Hard_To_Adjust
That’s understandable. It might help to talk about your feelings with someone you trust.
-> END

// Branch: Avoid_Change
= Avoid_Change
Avoiding change can lead to missed opportunities. Embracing it can lead to growth.
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

