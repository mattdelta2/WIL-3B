INCLUDE Global.ink

 
 Managing your time well is crucial for success. How do you usually manage your time?

* I make a schedule and try to stick to it.
    -> MakeSchedule

* I tend to procrastinate a lot.
    -> Procrastinated

* I just do things as they come, without much planning.
    -> No_Planning

= MakeSchedule
 Making a schedule is a great way to stay organized. What kind of tasks do you prioritize first?

* I focus on the most urgent tasks.
    -> Urgent_Tasks

* I like to start with smaller tasks to build momentum.
    -> Smaller_Tasks

= Urgent_Tasks
 Prioritizing urgent tasks can keep you on track, but remember not to overwhelm yourself. Balance is key.

* Could you try creating a schedule for your next big assignment?
    -> Plan_Assignment

= Smaller_Tasks
 Starting with smaller tasks can help build momentum. Just make sure you don’t leave the big ones for too long.

* Could you try creating a schedule for your next big assignment?
    -> Plan_Assignment

= Plan_Assignment
 I want you to try organizing your time for the next assignment. Would you be willing to make a quick schedule?

* Yes, I’ll try making a schedule.
    -> Accept_Schedule_Challenge

* No, I think I’ll just handle it as it comes.
    -> Decline_Schedule_Challenge

= Accept_Schedule_Challenge
 Great! Making even a basic plan will help you manage your time better.
-> AddEdu
-> END

= Decline_Schedule_Challenge
 It’s your choice, but remember, having a plan could make things a lot easier.
-> AddGang
-> END

= Procrastinated
 Procrastination can be a tough habit to break. What do you think makes you procrastinate?

* I get overwhelmed by everything I have to do.
    -> Overwhelmed_By_Tasks

* I have trouble getting started.
    -> Trouble_Getting_Started

= Overwhelmed_By_Tasks
 Feeling overwhelmed is common, especially when tasks pile up. Breaking tasks into smaller, manageable parts can help.
-> END

= Trouble_Getting_Started
 Starting is often the hardest part, but once you get going, it gets easier. Try setting a timer for just a few minutes to get started.
-> END

= No_Planning
 Doing things as they come might feel easy at first, but it can lead to chaos. Have you thought about planning your tasks ahead of time?

* I’ve thought about it, but I find it hard to stick to plans.
    -> Hard_To_Stick_To_Plans

* I’m not really sure how to start planning.
    -> Not_Sure_How_To_Plan

= Hard_To_Stick_To_Plans
 Sticking to plans can be challenging, but the more you practice, the easier it gets. Start small and build from there.
-> END

= Not_Sure_How_To_Plan
 Planning can be as simple as making a list of what you need to do. Start with a few key tasks and add more as you go.
-> END

= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END

