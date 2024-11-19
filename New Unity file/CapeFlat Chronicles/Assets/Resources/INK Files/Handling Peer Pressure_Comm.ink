INCLUDE Global.ink

// Dialogue 17: Handling Peer Pressure
Peer pressure can be tough. How do you handle it?

* I try to stay true to myself.
    -> True_To_Self

* I struggle to say no sometimes.
    -> Struggle_To_Say_No

* I just go along with what my friends do.
    -> Go_Along

= True_To_Self
That’s the best way to go! It’s important to know your values. Have you faced pressure recently?

* Yes, friends wanted me to skip class.
    -> Resisting_Pressure

* No, but I’m preparing for when it happens.
    -> Preparing_For_Pressure

= Resisting_Pressure
Good on you for resisting! Education is crucial.
-> AddEdu
-> END

= Preparing_For_Pressure
That’s a great mindset. Being ready to say no when it matters is a sign of strength.
-> AddEdu
-> END

= Struggle_To_Say_No
That’s normal! Peer pressure can be tricky to navigate. Have you tried practicing how to respond?

* Not yet, but I want to work on it.
    -> Work_On_Saying_No

* I feel like I can’t stand up to my friends.
    -> Struggle_With_Friends

= Work_On_Saying_No
Practicing will help you gain confidence. Start with small steps—you’ll get there.
-> AddEdu
-> END

= Struggle_With_Friends
It’s hard to stand up to friends, but real friends respect your boundaries. Don’t be afraid to speak up.
-> END

= Go_Along
That can lead to regret later. Remember, it’s okay to stand your ground. Why do you think you go along with it?

* I don’t want to be left out.
    -> Fear_Of_Exclusion

* I don’t think my voice matters in the group.
    -> Low_Confidence

= Fear_Of_Exclusion
Wanting to fit in is natural, but it’s better to be yourself than to do things you’ll regret later.
-> AddGang
-> END

= Low_Confidence
Your voice matters. If your friends don’t respect it, they might not be the right people for you.
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
