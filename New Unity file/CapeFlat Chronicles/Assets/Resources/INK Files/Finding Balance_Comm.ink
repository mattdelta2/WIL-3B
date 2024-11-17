INCLUDE Global.ink

// Dialogue 20: Finding Balance
Finding balance in life can be tough. How do you balance school, friends, and family?

* I prioritize my studies but make time for my friends.
    -> Prioritize_Studies

* I struggle to keep everything balanced.
    -> Struggle_To_Balance

* I focus on having fun.
    -> Focus_On_Fun

// Branch: Prioritize_Studies
= Prioritize_Studies
That’s a great approach! Balancing responsibilities and relationships is key to well-being.

* I try to keep a schedule.
    -> Keep_Schedule

// Sub-Branch: Keep_Schedule
= Keep_Schedule
Good! A schedule can help you manage your time effectively.
-> AddEdu
-> END

// Branch: Struggle_To_Balance
= Struggle_To_Balance
That’s common! Consider making a list of your priorities to help you focus.
-> END

// Branch: Focus_On_Fun
= Focus_On_Fun
While having fun is important, remember that balance can lead to a happier life overall.
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
