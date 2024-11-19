INCLUDE Global.ink

// Dialogue 7: Discussing Fear
Fear can hold you back. What are you afraid of?

* I’m afraid of failing.
    -> Afraid_Failing

* I don’t like confrontations.
    -> Dislike_Confrontations

* I don’t think about my fears.
    -> Ignore_Fears

// Branch: Afraid of Failing
= Afraid_Failing
Failure is a part of growth. It’s not the failure that defines you, but how you respond to it. What have you learned from your fears?

* I’ve learned to prepare better.
    -> Learned_Preparation

* I’ve learned that failure isn’t the end of the world.
    -> Failure_Not_End

= Learned_Preparation
That’s a great lesson! Preparation can reduce fear significantly and set you up for success.
-> AddEdu
-> END

= Failure_Not_End
That’s a powerful realization. Embracing failure as part of the process will make you stronger.
-> AddEdu
-> END

// Branch: Dislike Confrontations
= Dislike_Confrontations
That’s understandable. Avoiding conflict can feel easier, but learning to handle it positively can help you grow. How do you usually deal with confrontations?

* I try to stay calm and talk it out.
    -> Stay_Calm

* I avoid them completely, even if it means ignoring problems.
    -> Avoid_Confrontations

= Stay_Calm
That’s a healthy approach. Staying calm helps you handle confrontations constructively.
-> AddEdu
-> END

= Avoid_Confrontations
Avoiding confrontations might seem easier, but unresolved issues can grow bigger over time. Consider taking small steps to address them.
-> AddGang
-> END

// Branch: Ignore Fears
= Ignore_Fears
Ignoring fears doesn’t help. Acknowledging them is the first step toward overcoming them. What do you think holds you back from facing them?

* I’m not sure where to start.
    -> Not_Sure_Where_To_Start

* I think it’s easier to avoid them entirely.
    -> Avoid_Facing_Fears

= Not_Sure_Where_To_Start
That’s okay. Start small—identify one fear and take tiny steps toward addressing it.
-> AddEdu
-> END

= Avoid_Facing_Fears
Avoidance might feel easier, but it limits your growth. Facing fears head-on will help you unlock your potential.
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
