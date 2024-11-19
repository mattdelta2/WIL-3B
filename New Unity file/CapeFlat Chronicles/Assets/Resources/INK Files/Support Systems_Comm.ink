INCLUDE Global.ink

// Dialogue 9: Support Systems
Support systems are crucial. Who do you turn to when you need help?

* I talk to my family.
    -> Family_Support

* I usually keep things to myself.
    -> Keep_To_Self

* I don’t have anyone I can rely on.
    -> No_Reliable_Support

// Branch: Family Support
= Family_Support
Family support is invaluable! Do they encourage you to pursue your goals?

* Yes, they always push me to do my best.
    -> Encouraging_Family

* Sometimes, but they have their own struggles too.
    -> Mixed_Family_Support

= Encouraging_Family
That’s wonderful! Having that kind of backing can help you achieve so much.
-> AddEdu
-> END

= Mixed_Family_Support
That’s tough, but even small moments of encouragement can make a difference. Remember to appreciate their efforts, even when it’s hard.
-> AddEdu
-> END

// Branch: Keep To Self
= Keep_To_Self
It’s okay to seek help when you need it. Even the strongest people need support sometimes. What makes it hard for you to open up?

* I don’t want to burden others with my problems.
    -> Burden_Others

* I feel like no one will understand.
    -> No_Understanding

= Burden_Others
Sharing your struggles doesn’t make you a burden. Sometimes, talking can lighten the load for both you and the person listening.
-> END

= No_Understanding
It can feel that way, but you might be surprised by how much people care. Give them a chance to show you.
-> END

// Branch: No Reliable Support
= No_Reliable_Support
You’re not alone! We can be your support system here. Don’t hesitate to reach out.

* Maybe I’ll try to lean on others more.
    -> Open_To_Support

* I’ve learned to handle things on my own.
    -> Self_Reliance

= Open_To_Support
That’s a brave step. Building trust takes time, but it’s worth it.
-> AddEdu
-> END

= Self_Reliance
Independence is important, but even the strongest people need support now and then.
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
