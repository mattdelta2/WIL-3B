INCLUDE Global.ink

// Dialogue 20: Finding Balance
Finding balance in life can be tough. How do you balance school, friends, and family?

* I prioritize my studies but make time for my friends.
    -> Prioritize_Studies

* I struggle to keep everything balanced.
    -> Struggle_To_Balance

* I focus on having fun.
    -> Focus_On_Fun

// Branch: Prioritize Studies
= Prioritize_Studies
That’s a great approach! Balancing responsibilities and relationships is key to well-being. How do you make time for everything?

* I try to keep a schedule and stick to it.
    -> Keep_Schedule

* I take things day by day and adjust as needed.
    -> Adjust_Daily

// Sub-Branch: Keep Schedule
= Keep_Schedule
Good! A schedule can help you manage your time effectively. But don’t forget to leave room for rest. What’s the hardest part about sticking to your schedule?

* I sometimes feel too tired to keep up.
    -> Too_Tired_To_Keep_Up

* I feel guilty when I miss something on my schedule.
    -> Feel_Guilty_Missing

= Too_Tired_To_Keep_Up
That’s normal, my child. Your body needs rest too. Don’t push yourself too hard—your well-being comes first.
-> AddEdu
-> END

= Feel_Guilty_Missing
Mistakes happen, and no schedule is perfect. What matters is that you keep trying and learning from each day.
-> AddEdu
-> END

// Sub-Branch: Adjust Daily
= Adjust_Daily
That’s a flexible way to approach things! Just make sure you’re not leaving important tasks behind. Consistency is key to long-term success.
-> AddEdu
-> END

// Branch: Struggle to Balance
= Struggle_To_Balance
That’s common, my child. Life is a constant balancing act. What’s been the most challenging part for you?

* I feel like I don’t have enough time for everything.
    -> Not_Enough_Time

* I don’t know how to prioritize what’s important.
    -> Dont_Know_Priorities

= Not_Enough_Time
Time is precious, but sometimes you have to let go of less important things. Focus on what truly matters to you.
-> END

= Dont_Know_Priorities
It can be hard to decide, but think about what brings you closer to your goals. Those are the things worth focusing on.
-> END

// Branch: Focus on Fun
= Focus_On_Fun
Having fun is important—it keeps life enjoyable. But remember, balance leads to stability. Why do you focus on fun over responsibilities?

* I feel like life’s too short to be serious all the time.
    -> Life_Too_Short

* Responsibilities feel overwhelming, so I avoid them.
    -> Avoid_Responsibilities

= Life_Too_Short
Life is short, my child, but the choices you make now will shape your future. Find ways to enjoy life while still building towards your goals.
-> AddGang
-> END

= Avoid_Responsibilities
Avoiding things doesn’t make them go away—it just delays the consequences. Start small, and take one step at a time toward what needs to be done.
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
