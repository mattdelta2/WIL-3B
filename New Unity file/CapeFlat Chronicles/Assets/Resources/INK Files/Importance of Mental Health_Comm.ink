INCLUDE Global.ink

// Dialogue 24: The Importance of Mental Health
Mental health is just as important as physical health. How do you take care of your mental well-being?

* I talk to friends and family when I feel down.
    -> Talk_To_Friends

* I don’t really think about it.
    -> Dont_Think_About_Mental_Health

* I struggle with my mental health.
    -> Struggle_With_Mental_Health

// Branch: Talk To Friends
= Talk_To_Friends
That’s fantastic! Having a support system is vital for mental health. How do your friends and family help you?

* They listen and offer advice.
    -> Listen_And_Advice

* They help me see things from a different perspective.
    -> New_Perspectives

= Listen_And_Advice
It’s great to have people who care about you enough to listen. Always value those connections.
-> AddEdu
-> END

= New_Perspectives
Different perspectives can be eye-opening and help you handle challenges better. Keep leaning on those who lift you up.
-> AddEdu
-> END

// Branch: Don’t Think About Mental Health
= Dont_Think_About_Mental_Health
It’s easy to overlook mental health, but it’s important to pay attention to your feelings. What do you think stops you from focusing on it?

* I feel like I don’t have time to think about myself.
    -> No_Time_For_Self

* I’m not sure where to start.
    -> Not_Sure_Where_To_Start

= No_Time_For_Self
Taking care of yourself is essential, even if it’s just a few minutes a day. You can’t pour from an empty cup.
-> END

= Not_Sure_Where_To_Start
That’s okay. Start small—try to notice how you’re feeling and talk to someone about it.
-> END

// Branch: Struggle With Mental Health
= Struggle_With_Mental_Health
I’m sorry to hear that. It’s essential to reach out for help when you need it. What’s been the hardest part for you?

* I feel like no one understands what I’m going through.
    -> No_One_Understands

* I don’t know how to ask for help.
    -> Dont_Know_How_To_Ask

= No_One_Understands
Feeling misunderstood is tough, but there are people who want to help you—sometimes it just takes finding the right person.
-> AddGang
-> END

= Dont_Know_How_To_Ask
Asking for help can feel hard, but starting with someone you trust makes a big difference. You’re not alone.
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
