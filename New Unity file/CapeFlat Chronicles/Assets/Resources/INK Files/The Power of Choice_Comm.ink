INCLUDE Global.ink

// Dialogue 5: The Power of Choice
Every choice you make has consequences. How do you ensure your choices align with your goals?

* I think about the long-term effects before acting.
    -> Long_Term_Effects

* I just go with the flow and see where life takes me.
    -> Go_With_Flow

* I don’t think about it too much.
    -> No_Thought

// Branch: Long-Term Effects
= Long_Term_Effects
That’s wise! Planning ahead can prevent many issues. What’s a recent choice you made that you’re proud of?

* I decided to focus on my studies.
    -> Focus_On_Studies

* I’ve started helping my family more.
    -> Helping_Family

= Focus_On_Studies
That’s commendable! Staying focused will pay off in the long run. What strategies do you use to stay focused?

* I create a study schedule.
    -> Study_Schedule

* I set small, manageable goals.
    -> Small_Goals

= Study_Schedule
Creating a study schedule shows discipline. It’s a habit that will serve you well.
-> AddEdu
-> END

= Small_Goals
Setting small goals is a smart way to stay motivated. Every small win builds toward something bigger.
-> AddEdu
-> END

= Helping_Family
Helping your family is admirable. Supporting them while balancing your goals shows maturity. Keep it up.
-> AddEdu
-> END

// Branch: Go With Flow
= Go_With_Flow
That’s one way to live, but being intentional can help you achieve more. Have you thought about setting goals?

* Yes, but I struggle to follow through.
    -> Struggle_To_Follow_Through

* No, I prefer to keep things open-ended.
    -> Open_Ended_Life

= Struggle_To_Follow_Through
Following through can be challenging. Start small and build up—it’s easier to stick to a plan when it’s achievable.
-> END

= Open_Ended_Life
Keeping things open can feel freeing, but it can also make it harder to reach your potential. Consider balancing spontaneity with purpose.
-> END

// Branch: No Thought
= No_Thought
That can lead to regrets later. Take some time to reflect on your choices. Do you feel like you’ve made any decisions you’d change?

* Yes, I’ve made some choices I regret.
    -> Choices_Regret

* No, I think I’m fine with where I am.
    -> Content_With_Choices

= Choices_Regret
Regret is part of learning. Use those experiences to guide your future decisions.
-> AddEdu
-> END

= Content_With_Choices
If you’re happy with your choices, that’s great. Just remember to stay mindful of where you’re headed.
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
