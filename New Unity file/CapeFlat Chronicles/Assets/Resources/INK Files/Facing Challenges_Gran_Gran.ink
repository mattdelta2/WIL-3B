INCLUDE Global.ink

// Dialogue 5: Facing Challenges
Life’s not easy, I know that. But it’s how you handle the tough times that matters. Everyone goes through rough patches, but the important thing is how you come out on the other side. What are you facing right now?

* I’m pushing through, Gran. I’m not letting anything stop me.
    -> Pushing_Through

* It’s too hard, Gran. I don’t know if I can do it.
    -> Too_Hard

* I’m not sure what I’m doing, Gran. It’s all overwhelming.
    -> Feeling_Overwhelmed

// Branch: Pushing_Through
= Pushing_Through
That’s the attitude you need. What’s keeping you going?

* I want a better future. I’m working hard for it.
    -> Better_Future

* I’m just taking it one day at a time.
    -> One_Day_At_A_Time

// Sub-Branch: Better_Future
= Better_Future
That’s exactly what you need to focus on. Keep your eyes on the prize.
-> AddEdu
-> END

// Sub-Branch: One_Day_At_A_Time
= One_Day_At_A_Time
One day at a time is fine, as long as you don’t lose sight of where you’re heading.
-> END

// Branch: Too_Hard
= Too_Hard
Life is hard. No one said it would be easy. But giving up now will only make things worse later. What’s making you feel like you can’t handle it?

* Everything feels like it’s falling apart.
    -> Falling_Apart

* I’m just tired of struggling all the time.
    -> Tired_Of_Struggling

// Sub-Branch: Falling_Apart
= Falling_Apart
Then you need to pick up the pieces and keep building. You’re stronger than you think.
-> AddGang
-> END

// Sub-Branch: Tired_Of_Struggling
= Tired_Of_Struggling
We all get tired. But the key is to keep going, even when you feel like you can’t.
-> END

// Branch: Feeling_Overwhelmed
= Feeling_Overwhelmed
It’s okay to feel overwhelmed. Everyone does at some point. The trick is to take things one step at a time. What’s overwhelming you the most?

* I feel like I’m letting people down.
    -> Letting_People_Down

* I don’t know if I’m on the right path.

    -> Not_Sure_Path

// Sub-Branch: Letting_People_Down
= Letting_People_Down
You’re not letting anyone down. The only person you need to prove yourself to is you.
-> AddEdu
-> END

// Quest Start: Influence Quest
= Not_Sure_Path
It’s okay to question your path, but don’t let that doubt stop you from moving forward. Here’s something to try: go to the Community Center for some perspective. Or, if you’re feeling lost, you could talk to those on the street, but remember, each choice has consequences.
-> END

// Options for Quest Completion
*  Visit the Community Center for guidance.
    -> Influence_Quest_Community_Center

*  Spend time in the gang area instead.
    -> Influence_Quest_Gang_Area

= Influence_Quest_Community_Center
The Community Center offers you a sense of purpose and guidance. This path may not be easy, but it helps you build toward a better future.
~ EduStat += 1

-> END

= Influence_Quest_Gang_Area
The gang area offers a different sense of belonging, one that may make things feel easier now but comes with its own risks and costs.
~ GangStat += 1

-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat, 0) // Ensures GangStat doesn't drop below 0
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat, 0) // Ensures EduStat doesn't drop below 0
-> END
