INCLUDE Global.ink

// Dialogue 14: Family Values
Family is important, my child. They’re the ones who stick by you when the world gets hard. What does family mean to you?

* It means everything to me. I want to make you proud.
    -> Family_Everything

* I care about family, but sometimes it feels like too much.
    -> Feels_Too_Much

* I don’t know. I feel like I’m always letting everyone down.
    -> Letting_Everyone_Down

// Branch: Family Everything
= Family_Everything
That’s a good way to think, but remember, family isn’t about being perfect. It’s about supporting each other. What are you doing to support the family?

* I help out when I can, and I’m trying to stay on the right path.
    -> Stay_Right_Path

* I don’t know if I’m doing enough, but I’m trying.
    -> Trying_To_Do_Enough

= Stay_Right_Path
You’re doing what you can, and that’s more than enough. Keep going, my child. You’re stronger than you know.
-> AddEdu
-> END

= Trying_To_Do_Enough
Effort matters more than results, especially in family. Just don’t give up on yourself or us.
-> AddEdu
-> END

// Branch: Feels Too Much
= Feels_Too_Much
I get that, my child. Family can be overwhelming, but you’re not in this alone. Why do you feel this way?

* It feels like too much pressure to be what everyone expects.
    -> Too_Much_Pressure

* I feel like I’m giving and giving, but I never get anything back.
    -> Giving_Without_Return

= Too_Much_Pressure
Pressure can be heavy, but you don’t have to carry it alone. We’re here to support you, not weigh you down.
-> AddEdu
-> END

= Giving_Without_Return
I understand how you feel, but family is about unconditional love. Sometimes you give without expecting anything in return.
-> AddGang
-> END

// Branch: Letting Everyone Down
= Letting_Everyone_Down
You feel that way because you care, but it’s not true. You’re not letting anyone down, my child. What makes you feel this way?

* I’ve made mistakes, and I feel like I can’t make up for them.
    -> Made_Mistakes

* I just don’t feel like I’m enough, no matter what I do.
    -> Not_Enough

= Made_Mistakes
Everyone makes mistakes, but they don’t define you. What matters is what you do next. Start fresh and keep trying.
-> AddEdu
-> END

= Not_Enough
You’re more than enough, my child. Don’t let doubt take root in your heart. You’ve got so much potential.
-> AddEdu
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
