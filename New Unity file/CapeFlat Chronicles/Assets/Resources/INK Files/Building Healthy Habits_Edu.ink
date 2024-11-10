INCLUDE Global.ink

Building healthy habits is key to success. What are some habits you’re working on?

* I’m trying to get better at managing my time.
    -> Time_Management_Habit

* I’m trying to exercise more regularly.
    -> Exercise_Habit

* I’m not really working on any habits right now.
    -> No_Current_Habits

= Time_Management_Habit
 That’s a great habit to build. Time management helps you achieve more without feeling overwhelmed. How are you working on it?

* I’m using a planner to schedule my day.
    -> Using_Planner

* I’m setting small, daily goals for myself.
    -> Setting_Daily_Goals

= Using_Planner
 A planner is an excellent tool. It keeps you organized and accountable. Keep at it, and you’ll see improvements.
-> END

= Setting_Daily_Goals
 Setting daily goals is a great way to stay on track. Small wins every day add up to big achievements.
-> END

= Exercise_Habit
 Exercise is a wonderful habit. It keeps you healthy and also helps manage stress. What kind of exercise are you focusing on?

* I’m trying to go for a run every day.
    -> Running_Every_Day

* I’m doing some simple workouts at home.
    -> Home_Workouts

= Running_Every_Day
 Running is a great way to stay fit. It’s tough at first, but the more you stick to it, the easier it will get. Keep pushing yourself.
-> END

= Home_Workouts
 Home workouts are perfect when you don’t have time for the gym. Consistency is what matters most—keep going!
-> END

= No_Current_Habits
 That’s okay, but building healthy habits can really make life easier. Is there anything you’d like to work on?

* I’d like to eat healthier.
    -> Eating_Healthier

* I’d like to get more sleep.
    -> More_Sleep

= Eating_Healthier
 Eating healthier can make a big difference in how you feel. Start small—maybe add more fruits and vegetables to your meals. Every step counts.
->AddEdu
-> END

= More_Sleep
 Sleep is crucial for your health and well-being. Try setting a bedtime and sticking to it—it will help you feel more rested.
->AddEdu
-> END

 "Here’s a challenge: start small by either adding more fruits and vegetables to your meals or setting a consistent bedtime. How do you think this could benefit you?"

* I think eating healthier could give me more energy.
    -> AddEdu
    Teacher: "Absolutely! The right nutrition can make a big difference in how you feel every day."
    -> HabitBuildingChallenge_Complete

* Getting more sleep would definitely help me feel better.
    -> AddEdu
    Teacher: "Sleep is essential. Even an extra hour can make a huge difference in your energy levels and focus."
    -> HabitBuildingChallenge_Complete

* I’m not sure if small changes will make a difference.
    -> AddGang
    Teacher: "Sometimes the smallest steps lead to the biggest changes. Don’t underestimate the impact of a single habit."
    -> END

= HabitBuildingChallenge_Complete
Teacher: "Well done. Starting small is the key to building lasting habits. Keep at it, and you’ll see positive changes!"
-> END

=AddEdu
~EduStat += 1
~GangStat = MIN(GangStat,0)
-> END

=AddGang
~EduStat = MIN(EduStat,0)
~GangStat += 1
-> END
