INCLUDE Global.ink

// Dialogue 16: Handling Anger
Anger is a powerful emotion, my child. It can build or destroy, depending on how you handle it. What do you do when you feel angry?

* I try to calm myself down before reacting.
    -> Calm_Before_Reacting

* I just let it out, even if it hurts others.
    -> Let_It_Out

* I bottle it up and deal with it later.
    -> Bottle_It_Up

// Branch: Calm_Before_Reacting
= Calm_Before_Reacting
That’s wise. Taking a moment to breathe can stop anger from controlling you. What helps you calm down the most?

* I take a walk or step away from the situation.
    -> Step_Away

* I talk to someone I trust about how I’m feeling.
    -> Talk_To_Someone

= Step_Away
Walking away is a sign of strength, not weakness. It shows you’re in control of your emotions.
-> AddEdu
-> END

= Talk_To_Someone
Sharing your feelings can lighten the load. It’s good to have someone you trust to lean on.
-> AddEdu
-> END

// Branch: Let_It_Out
= Let_It_Out
Anger is natural, but letting it out without thinking can hurt you and those around you. Why do you feel the need to release it so quickly?

* It feels like the only way to make people listen to me.
    -> Make_People_Listen

* I don’t know. I just can’t keep it in.
    -> Cant_Keep_It_In

= Make_People_Listen
I understand, but there are better ways to make people hear you. Calm words often speak louder than shouting.
-> AddEdu
-> END

= Cant_Keep_It_In
It’s hard to hold in strong emotions, but learning to control them will help you in the long run.
-> AddGang
-> END

// Branch: Bottle_It_Up
= Bottle_It_Up
Bottling up your anger might seem easier, but it can build up and explode later. Why do you keep it inside?

* I don’t want to hurt others, so I keep it to myself.
    -> Dont_Want_To_Hurt

* I feel like no one will understand how I’m feeling.
    -> No_One_Understands

= Dont_Want_To_Hurt
That’s thoughtful of you, but you need to find a healthy way to release it. Anger, when bottled up, can hurt you most of all.
-> AddEdu
-> END

= No_One_Understands
Even if it feels that way, someone will always care enough to listen. Don’t carry that weight alone.
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
