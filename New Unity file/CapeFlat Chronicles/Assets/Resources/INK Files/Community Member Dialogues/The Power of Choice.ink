INCLUDE Global.ink

// Dialogue 5: The Power of Choice
Every choice you make has consequences. How do you ensure your choices align with your goals?

* I think about the long-term effects before acting.
    -> Long_Term_Effects

* I just go with the flow and see where life takes me.
    -> Go_With_Flow

* I don’t think about it too much.
    -> No_Thought

// Branch: Long_Term_Effects
= Long_Term_Effects
That’s wise! Planning ahead can prevent many issues. What’s a recent choice you made that you’re proud of?

* I decided to focus on my studies.
    -> Focus_On_Studies

// Sub-Branch: Focus_On_Studies
= Focus_On_Studies
That’s commendable! Staying focused will pay off in the long run.
-> AddEdu
-> END

// Branch: Go_With_Flow
= Go_With_Flow
That’s one way to live, but being intentional can help you achieve more.
-> END

// Branch: No_Thought
= No_Thought
That can lead to regrets later. Take some time to reflect on your choices.
-> AddGang
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END
