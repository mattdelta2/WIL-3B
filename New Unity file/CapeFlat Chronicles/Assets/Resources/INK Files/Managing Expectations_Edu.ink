INCLUDE Global.ink 

// Dialogue: Managing Expectations
Managing expectations is important, both those you set for yourself and those others set for you. How do you feel about the expectations people have for you?

* I think they expect too much from me.
    -> Too_Much_Expectation

* I think they’re reasonable, but it’s hard to keep up.
    -> Reasonable_But_Hard

* I don’t think people expect much from me at all.
    -> Low_Expectations

// Branch: Too Much Expectation
= Too_Much_Expectation
Teacher: It can be overwhelming when people expect a lot from you. Have you talked to anyone about how you’re feeling?

* No, I don’t think they’d understand.
    -> Dont_Think_Understand

* I tried, but they told me I needed to work harder.
    -> Told_To_Work_Harder

* I’m used to keeping my feelings to myself.
    -> Keep_To_Self

= Dont_Think_Understand
Teacher: Sometimes we think people won’t understand, but they might surprise you. It’s worth trying to communicate how you’re feeling.
-> END

= Told_To_Work_Harder
Teacher: That can be tough to hear, especially when you’re already trying your best. Remember, you can only do what you’re capable of—don’t push yourself beyond your limits.
-> END

= Keep_To_Self
Teacher: Keeping your feelings bottled up can make things harder. Opening up to someone you trust might help ease the pressure.
-> AddGang
-> END

// Branch: Reasonable But Hard
= Reasonable_But_Hard
Teacher: It’s good that you see the expectations as reasonable, even if they’re challenging. What helps you stay motivated to meet them?

* I try to focus on one thing at a time.
    -> Focus_On_One_Thing

* I remind myself why it’s important.
    -> Remind_Importance

* I think about how proud my family will be.
    -> Family_Pride

= Focus_On_One_Thing
Teacher: Breaking things down into smaller tasks can make them more manageable. That’s a great strategy—keep it up.
-> AddEdu
-> END

= Remind_Importance
Teacher: Reminding yourself why something matters is a powerful motivator. Keeping the bigger picture in mind will help you get through the tough times.
-> END

= Family_Pride
Teacher: That’s wonderful. Family can be a strong source of motivation. Use that pride to keep moving forward.
-> AddEdu
-> END

// Branch: Low Expectations
= Low_Expectations
Teacher: When people don’t expect much, it can feel disheartening. But remember, you set your own expectations. What do you expect from yourself?

* I expect to do better than people think I can.
    -> Expect_To_Do_Better

* I’m not sure. I don’t really have expectations for myself.
    -> No_Self_Expectations

* I don’t think expectations matter.
    -> Expectations_Dont_Matter

= Expect_To_Do_Better
Teacher: That’s the spirit. Defy the expectations others set for you. Show them—and yourself—what you’re capable of.
-> AddEdu
-> END

= No_Self_Expectations
Teacher: It’s important to set expectations for yourself, even if they’re small. Would you be willing to set a simple goal to work toward?

* Yes, I’ll set a goal for my next assignment.
    -> Accept_Goal_Setting

* I’m not ready to set any goals yet.
    -> Decline_Goal_Setting

= Expectations_Dont_Matter
Teacher: Expectations can shape the direction of your life. Even if others’ opinions don’t matter to you, setting personal goals can still help.
-> AddGang
-> END

= Accept_Goal_Setting
Teacher: That’s a great start! Setting even a small goal can help you build confidence over time.
-> AddEdu
-> END

= Decline_Goal_Setting
Teacher: I understand. When you’re ready, consider setting a goal. It could make a difference.
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
