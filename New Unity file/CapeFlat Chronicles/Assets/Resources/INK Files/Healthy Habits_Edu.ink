INCLUDE Global.ink

// Dialogue 12: Developing Healthy Habits
Developing healthy habits can make a big difference in your daily life. What habits are you trying to develop?

* I’m trying to exercise regularly.
    -> Exercise_Regularly

* I’m trying to eat healthier.
    -> Eat_Healthier

* I want to get better at managing my time.
    -> Manage_Time_Better

= Exercise_Regularly
Teacher: Regular exercise can do wonders for both your physical and mental health. What kind of exercise do you enjoy the most?

* I like going for runs.
    -> Like_Running

* I prefer team sports.
    -> Team_Sports

* I’m not sure, I just want to stay active.
    -> Stay_Active

= Like_Running
Teacher: Running is a great way to stay fit, and it can really clear your mind. Keep at it, and remember to pace yourself.
-> AddEdu
-> END

= Team_Sports
Teacher: Team sports are a fantastic way to stay active and build connections with others. It’s great that you’re combining fitness with social interaction.
-> AddEdu
-> END

= Stay_Active
Teacher: Staying active is a great goal, whether it’s structured exercise or just moving more during the day. The important part is to keep moving.
-> AddEdu
-> END

= Eat_Healthier
Teacher: Eating healthier is an important habit. It’s all about making small, sustainable changes. What are you focusing on with your diet?

* I’m trying to eat more fruits and vegetables.
    -> More_Fruits_Vegetables

* I’m cutting back on junk food.
    -> Less_Junk_Food

* I want to drink more water.
    -> More_Water

= More_Fruits_Vegetables
Teacher: That’s a great step. Adding more fruits and vegetables to your diet gives your body the nutrients it needs to feel its best.
-> AddEdu
-> END

= Less_Junk_Food
Teacher: Cutting back on junk food can be tough, but it makes a big difference. Take it one day at a time, and remember, balance is key.
-> AddEdu
-> END

= More_Water
Teacher: Drinking more water is one of the simplest ways to improve your health. Keep a water bottle with you as a reminder.
-> AddEdu
-> END

= Manage_Time_Better
Teacher: Managing time well is a habit that can reduce stress and make life feel more under control. How are you working on improving it?

* I’m trying to use a planner to keep track of my tasks.
    -> Use_Planner

* I want to stop procrastinating.
    -> Stop_Procrastinating

= Use_Planner
Teacher: Using a planner is a great way to stay organized. It helps you see what needs to be done and plan your time accordingly. Keep using it consistently, and it will become second nature.
-> AddEdu
-> END

= Stop_Procrastinating
Teacher: Procrastination is something we all struggle with. Start by tackling small tasks first—they build momentum and help you move forward.
-> AddEdu
-> END

// Quest Integration: Healthy Choices Quest
* I’d like some help in sticking to a healthy habit.
    -> Start_HealthyChoices_Quest

= Start_HealthyChoices_Quest
Teacher: That’s wonderful! Let’s choose one small change you can focus on for a week. What habit would you like to commit to?

* Exercise more often.
    -> Commit_Exercise

* Eat healthier meals.
    -> Commit_HealthyEating

* Focus on better time management.
    -> Commit_TimeManagement

= Commit_Exercise
Teacher: Great choice! Let’s start with a short daily routine. We’ll check in next week to see how it’s going.
-> Complete_HealthyChoices_Quest

= Commit_HealthyEating
Teacher: Wonderful! Try incorporating one healthier meal a day and see how it makes you feel.
-> Complete_HealthyChoices_Quest

= Commit_TimeManagement
Teacher: Excellent! Start with planning your day ahead each evening. It’ll make a big difference.
-> Complete_HealthyChoices_Quest

= Complete_HealthyChoices_Quest
Teacher: Well done! Committing to a healthy habit, even if it’s small, shows real discipline. I’m proud of you!
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
