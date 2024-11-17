INCLUDE Global.ink

// Second Dialogue: Setting Goals
It’s important to set goals for yourself. Without goals, you’re just drifting. Do you have any goals right now?

* I want to graduate and get a job that helps me leave this place.
    -> Graduate_Job

* I don’t really have any goals. I’m just trying to get through the day.
    -> No_Goals

= Graduate_Job
That’s a solid goal. What kind of job are you aiming for?

* Something in engineering, maybe. I like building things.
    -> Engineering

* I’m not sure yet, but I’ll figure it out.
    -> Not_Sure_Yet

= Engineering
That’s a great goal. Engineering can open many doors for you.

* Could you help me set up a plan to achieve this?
    -> Start_Teacher_Goal_Quest

-> END

= Not_Sure_Yet
That’s okay. What matters is that you’re thinking about the future.
-> END

= No_Goals
That’s dangerous thinking. If you don’t have goals, you’re letting life happen to you. Why don’t you have any goals?

* I don’t see the point. Nothing ever changes here.
    -> Nothing_Changes

* It feels like setting goals won’t matter.
    -> No_Matter

= Nothing_Changes
Nothing changes because too many people think like that. Be different.
-> AddGang
-> END

= No_Matter
Every goal matters. Without them, you’ll never move forward.
-> AddGang
-> END

// Start Teacher Goal Quest
= Start_Teacher_Goal_Quest
Alright, let’s break it down. First, what’s one thing you can do now that will help you work towards this goal?

* I could study harder and focus on science and math.
    -> Study_Hard_Plan

* I’m not sure. It all feels overwhelming.
    -> Overwhelmed_Plan

= Study_Hard_Plan
That’s a great start. Focusing on your studies will set you up for success in engineering. Keep going, and you’ll see the results.
-> AddEdu
-> Complete_Teacher_Goal_Quest

= Overwhelmed_Plan
It’s okay to feel overwhelmed. Start small—one step at a time. Even small actions will add up.
-> AddGang
-> Complete_Teacher_Goal_Quest

// Quest Completion
= Complete_Teacher_Goal_Quest
You’re on the right path. Remember, goals are achieved one step at a time. I’ll be here to support you.
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MIN(GangStat, 0)
-> END

= AddGang
~ EduStat = MIN(EduStat, 0)
~ GangStat += 1
-> END
