INCLUDE Global.ink

// Dialogue 9: Support Systems
Support systems are crucial. Who do you turn to when you need help?

* I talk to my family.
    -> Family_Support

* I usually keep things to myself.
    -> Keep_To_Self

* I don’t have anyone I can rely on.
    -> No_Reliable_Support

// Branch: Family_Support
= Family_Support
Family support is invaluable! Do they encourage you to pursue your goals?

* Yes, they always push me to do my best.
    -> Encouraging_Family

// Sub-Branch: Encouraging_Family
= Encouraging_Family
That’s wonderful! Having that kind of backing can help you achieve so much.
-> AddEdu
-> END

// Branch: Keep_To_Self
= Keep_To_Self
It’s okay to seek help when you need it. You can always talk to me or other staff here.
-> END

// Branch: No_Reliable_Support
= No_Reliable_Support
You’re not alone! We can be your support system here. Don’t hesitate to reach out.
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

