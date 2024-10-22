
// Second dialogue: Setting Goals
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
-> END

= No_Matter
 Every goal matters. Without them, you’ll never move forward.
-> END



=AddEdu
~EduStat += 1
~GangStat -= 1
~ GangStat = MIN(GangStat,0)
->END

=AddGang
~EduStat -= 1
~ EduStat = MIN(EduStat,0)
~GangStat += 1
->END
