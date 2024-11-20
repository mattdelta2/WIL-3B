INCLUDE Global.ink

// Dialogue: Life is full of choices
Life is full of choices, and every decision you make can affect your future. How do you decide what's the right choice?

* I weigh the pros and cons before making a decision.
    -> Weighing_Pros_Cons

* I follow my instincts, even if it’s risky.
    -> Follow_Instincts

* I don’t think much about it, I just go with the flow.
    -> Go_With_Flow

// Branch: Weighing Pros and Cons
= Weighing_Pros_Cons
That’s a wise approach. Thinking carefully helps avoid regret. Do you have any recent decisions you’re proud of?

* I decided to focus more on my studies.
    -> Focus_Studies

* I chose to spend more time helping my family.
    -> Help_Family

= Focus_Studies
That’s great. Education can open so many opportunities if you dedicate yourself to it.
-> AddEdu
-> END

= Help_Family
Helping family is important. Balancing your responsibilities shows maturity.
-> AddEdu
-> END

// Branch: Follow Instincts
= Follow_Instincts
Following your instincts can lead to interesting experiences, but it’s important to balance it with reason. Have you made any risky choices recently?

* Yes, and it ended up working out well.
    -> Risk_Worked

* Yes, but it didn’t turn out the way I wanted.
    -> Risk_Failed

= Risk_Worked
Sometimes taking risks can lead to rewards. Just remember to weigh the consequences carefully.
-> AddGang
-> END

= Risk_Failed
It’s okay to make mistakes. We learn the most from our failures.
-> AddGang
-> END

// Branch: Go With the Flow
= Go_With_Flow
Going with the flow is easy, but without direction, you may end up somewhere you didn’t want to be. Have you considered planning more?

* I think I should start making more plans.
    -> Start_Planning

* I’m okay with seeing where life takes me.
    -> No_Plans

= Start_Planning
Planning doesn’t guarantee success, but it does help you stay prepared for challenges. It’s worth trying.
-> AddEdu
-> END

= No_Plans
Just be careful that you don’t drift too far from where you want to be. A little planning can go a long way.
-> AddGang
-> END

// Quest Integration: Life Choices Quest
* I’d like to learn more about making good choices.
    -> Start_LifeChoices_Quest

= Start_LifeChoices_Quest
Teacher: Great! Let’s start with a small exercise. Imagine you have to choose between studying for an exam or helping a friend with something important. What would you choose and why?

-> Complete_LifeChoices_Quest

// Quest completion within another dialogue or a follow-up
= Complete_LifeChoices_Quest
Your thoughtful answer shows you’re learning to weigh your choices carefully. Well done!
-> AddEdu

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END
