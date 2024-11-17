INCLUDE Global.ink



// Dialogue 23: Defining Success
Success doesn’t look the same for everyone. It’s important to define what it means for you. What do you think success is?

* Success is achieving my goals and building a better life.
    -> Achieving_Goals

* Success is about having respect and power.
    -> Respect_And_Power

* I don’t know, Gran. I’m still trying to figure it out.
    -> Figuring_Out_Success

// Branch: Achieving Goals
= Achieving_Goals
That’s a strong definition, my child. Success doesn’t have to be big—it’s about progress. What’s one step you can take toward your goals?

* I can work harder at school and focus on my studies.
    -> Focus_On_Studies

* I can start planning for the future and saving for it.
    -> Planning_And_Saving

= Focus_On_Studies
That’s a solid start. Education is a powerful tool, and it can open many doors for you.
-> AddEdu
-> END

= Planning_And_Saving
Planning ahead shows maturity. Even small steps now can make a big difference later.
-> AddEdu
-> END

// Branch: Respect and Power
= Respect_And_Power
Respect and power can be part of success, but they’re not everything. If that’s your focus, what do you think it takes to get there?

* I need to work hard and earn people’s trust.
    -> Earn_Trust

* I need to do whatever it takes, no matter the cost.
    -> Whatever_It_Takes

= Earn_Trust
That’s a wise approach. True respect comes from how you treat others, not just what you achieve.
-> AddEdu
-> END

= Whatever_It_Takes
Be careful, my child. Doing whatever it takes can lead you down dangerous paths. Success built on harm won’t bring you peace.
-> AddGang
-> END

// Branch: Figuring Out Success
= Figuring_Out_Success
That’s okay. Success isn’t something you figure out overnight. What do you think would make you feel proud of yourself?

* Making my family proud by achieving something meaningful.
    -> Make_Family_Proud

* Building a life where I don’t have to worry anymore.
    -> Life_Without_Worry

= Make_Family_Proud
That’s a beautiful goal. Family is important, but remember, your success should also make you proud.
-> AddEdu
-> END

= Life_Without_Worry
Security is a big part of success, but it takes time to get there. Keep working toward it step by step.
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
