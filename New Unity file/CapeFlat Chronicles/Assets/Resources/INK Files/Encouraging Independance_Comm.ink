INCLUDE Global.ink

// Dialogue 18: Encouraging Independence
Independence is vital. How are you learning to be independent?

* I’m trying to make my own decisions.
    -> Making_Own_Decisions

* I still rely on my family for most decisions.
    -> Family_Reliance

* I don’t see the point in being independent.
    -> No_Point_In_Independence

// Branch: Making Own Decisions
= Making_Own_Decisions
That’s a strong step! Making choices helps you grow. What’s a recent decision you’re proud of?

* I chose to study instead of hanging out with friends.
    -> Studying_Choice

* I decided to save my money instead of spending it.
    -> Saving_Money

= Studying_Choice
Excellent choice! Prioritizing your studies shows great maturity and foresight.
-> AddEdu
-> END

= Saving_Money
That’s a smart decision. Learning to save now will give you more freedom later.
-> AddEdu
-> END

// Branch: Family Reliance
= Family_Reliance
That’s okay, but it’s important to practice making decisions on your own, too. What’s stopping you from being more independent?

* I’m afraid of making the wrong choices.
    -> Fear_Wrong_Choices

* I don’t feel ready yet.
    -> Not_Ready_Independence

= Fear_Wrong_Choices
It’s normal to fear mistakes, but they’re part of learning. Trust yourself—you’ll get better with each decision.
-> AddEdu
-> END

= Not_Ready_Independence
It’s okay to take your time. Independence comes in small steps. Start with manageable decisions and build from there.
-> AddEdu
-> END

// Branch: No Point in Independence
= No_Point_In_Independence
Independence empowers you to take control of your life. What makes you feel like it’s unnecessary?

* I think I’ll always have someone to rely on.
    -> Always_Rely_On_Others

* I don’t think independence will change anything for me.
    -> Independence_No_Impact

= Always_Rely_On_Others
Having support is great, but it’s important to develop skills that let you stand on your own, too.
-> AddGang
-> END

= Independence_No_Impact
Independence might seem small, but it builds confidence and resilience. Give it a chance—you might surprise yourself.
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
