INCLUDE Global.ink

// Dialogue 4: Facing Challenges
Challenges are part of life. How do you cope when faced with difficulties?

* I try to stay positive and work through them.
    -> Stay_Positive

* I just ignore my problems.
    -> Ignore_Problems

* I let my friends help me.
    -> Friends_Help

// Branch: Stay Positive
= Stay_Positive
That’s a fantastic approach! Positivity can be a game-changer. What helps you stay positive during tough times?

* Reminding myself of my goals.
    -> Focus_On_Goals

* Taking things one step at a time.
    -> One_Step_At_A_Time

= Focus_On_Goals
That’s excellent! Keeping your goals in mind provides direction and strength to overcome challenges.
-> AddEdu
-> END

= One_Step_At_A_Time
Breaking challenges into smaller steps makes them more manageable. Keep taking those steps forward.
-> AddEdu
-> END

// Branch: Ignore Problems
= Ignore_Problems
Ignoring problems might feel easier, but it often makes things worse. What makes it hard for you to face challenges?

* I feel overwhelmed and don’t know where to start.
    -> Overwhelmed

* I’m scared of failing if I try.
    -> Fear_Of_Failure

= Overwhelmed
Feeling overwhelmed is tough, but starting small can make a big difference. Focus on one thing at a time.
-> AddEdu
-> END

= Fear_Of_Failure
It’s natural to fear failure, but remember, every attempt is a step toward success. Don’t let fear stop you.
-> AddGang
-> END

// Branch: Friends Help
= Friends_Help
That’s a smart way to cope! Support from friends can make challenges feel lighter. How do your friends help you the most?

* They give me advice and encouragement.
    -> Friends_Give_Advice

* They step in and handle things for me.
    -> Friends_Handle_Things

= Friends_Give_Advice
Great! Surrounding yourself with positive influences is key to growing and overcoming challenges.
-> AddEdu
-> END

= Friends_Handle_Things
It’s good to rely on friends, but remember to develop your own skills for handling problems. Independence is important too.
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
