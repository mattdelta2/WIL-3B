INCLUDE Global.ink

// Dialogue 7: Discussing Fear
Fear can hold you back. What are you afraid of?

* I’m afraid of failing.
    -> Afraid_Failing

* I don’t like confrontations.
    -> Dislike_Confrontations

* I don’t think about my fears.
    -> Ignore_Fears

// Branch: Afraid_Failing
= Afraid_Failing
Failure is a part of growth. What’s something you’ve learned from your fears?

* I’ve learned to prepare better.
    -> Learned_Preparation

// Sub-Branch: Learned_Preparation
= Learned_Preparation
That’s a great lesson! Preparation can reduce fear significantly.
-> AddEdu
-> END

// Branch: Dislike_Confrontations
= Dislike_Confrontations
That’s understandable. Learning to handle confrontations positively can help you grow. Have you thought about practicing?
-> END

// Branch: Ignore_Fears
= Ignore_Fears
Ignoring fears doesn’t help. Acknowledging them can lead to personal growth.
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

