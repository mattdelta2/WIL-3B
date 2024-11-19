INCLUDE Global.ink

Life will always have setbacks. Resilience is about bouncing back even when things get tough. How do you deal with setbacks?

* I try to stay positive and keep pushing forward.
    -> Stay_Positive

* I tend to get discouraged easily.
    -> Get_Discouraged

* I focus on what I can learn from the situation.
    -> Learn_From_Situation

= Stay_Positive
That’s a great mindset to have. Staying positive makes it easier to handle difficulties. How do you keep yourself motivated?

* I remind myself why I started in the first place.
    -> Remind_Why_Started
    -> AddEdu

* I think about how good it will feel to overcome the challenge.
    -> Think_About_Reward
    -> AddEdu

= Remind_Why_Started
Remembering your reasons for starting is powerful. It keeps you focused on what’s truly important.
-> END

= Think_About_Reward
Visualizing success is a powerful motivator. Keep that vision in mind, and you’ll find the strength to push through.
-> END

= Get_Discouraged
It’s natural to feel discouraged sometimes. The important thing is not to stay down. What helps you get back up?

* I talk to people who encourage me.
    -> Encouraging_People
    -> AddEdu

* I take a break and give myself time.
    -> Take_Break
    -> AddGang

= Encouraging_People
Having people who lift you up is invaluable. Don’t hesitate to reach out when you need them.
-> END

= Take_Break
Taking a break is sometimes the best thing you can do. Just remember to come back stronger.
-> END

= Learn_From_Situation
Learning from setbacks makes you stronger. Every failure has a lesson if you look for it. What have you learned from your most recent setback?

* I learned that I need to manage my time better.
    -> Time_Management
    -> AddEdu

* I learned not to be afraid of asking for help.
    -> Ask_For_Help
    -> AddEdu

= Time_Management
Time management is a crucial skill. It’s great that you’ve identified it as an area for improvement.
-> END

= Ask_For_Help
Knowing when to ask for help is a sign of strength, not weakness. Remember, no one gets through life alone.
-> END

= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END
