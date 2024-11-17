INCLUDE Global.ink

// Dialogue 17: Handling Peer Pressure
Peer pressure can be tough. How do you handle it?

* I try to stay true to myself.
    -> True_To_Self

* I struggle to say no sometimes.
    -> Struggle_To_Say_No

* I just go along with what my friends do.
    -> Go_Along

// Branch: True_To_Self
= True_To_Self
That’s the best way to go! It’s important to know your values. Have you faced pressure recently?

* Yes, friends wanted me to skip class.
    -> Resisting_Pressure

// Sub-Branch: Resisting_Pressure
= Resisting_Pressure
Good on you for resisting! Education is crucial.
-> AddEdu
-> END

// Branch: Struggle_To_Say_No
= Struggle_To_Say_No
That’s normal! It’s essential to practice saying no in situations that don’t align with your goals.
-> END

// Branch: Go_Along
= Go_Along
That can lead to regret later. Remember, it’s okay to stand your ground.
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

