INCLUDE Global.ink

// Dialogue 27: Community Events
We have a community event coming up! Are you interested in participating?

* Sounds interesting! I’d like to help out.
    -> Interested_To_Help

* I’m not sure if I want to join.
    -> Unsure_To_Join

* I’m not interested in community events.
    -> Not_Interested_In_Events

// Branch: Interested_To_Help
= Interested_To_Help
That’s fantastic! Your involvement can make a big difference.

* I can help with organizing.
    -> Help_With_Organizing

// Sub-Branch: Help_With_Organizing
= Help_With_Organizing
Great! Let’s meet to discuss details.
-> AddEdu
-> END

// Branch: Unsure_To_Join
= Unsure_To_Join
No pressure! Just know that getting involved can be rewarding and fun.
-> END

// Branch: Not_Interested_In_Events
= Not_Interested_In_Events
That’s okay, but participating can help you meet new people and make connections.
-> AddGang
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END
