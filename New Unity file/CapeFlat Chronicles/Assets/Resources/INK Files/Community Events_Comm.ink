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
That’s fantastic! Your involvement can make a big difference. How would you like to contribute?

* I can help with organizing.
    -> Help_With_Organizing

* I can volunteer to assist during the event.
    -> Volunteer_To_Assist

= Help_With_Organizing
Great! Let’s meet to discuss details. Your help will be invaluable in making the event a success.
-> AddEdu
-> END

= Volunteer_To_Assist
That’s wonderful! Your support during the event will be a huge help. Thank you for stepping up.
-> AddEdu
-> END

// Branch: Unsure_To_Join
= Unsure_To_Join
No pressure! Just know that getting involved can be rewarding and fun. Maybe think about what interests you most in the community.

* I’ll think about it and decide closer to the date.
    -> Think_Closer_To_Date

* I’m not sure. I’m still leaning toward not joining.
    -> Still_Unsure

= Think_Closer_To_Date
That’s fair. Take your time—there’s no rush. The community will welcome your decision either way.
-> END

= Still_Unsure
That’s okay too. Just know the community is always open if you decide to join in later.
-> END

// Branch: Not_Interested_In_Events
= Not_Interested_In_Events
That’s okay, but participating can help you meet new people and make connections. It’s worth considering for the future.

* Maybe next time, but not now.
    -> Maybe_Next_Time

* I prefer to stay out of community activities altogether.
    -> Stay_Out

= Maybe_Next_Time
That’s understandable. Sometimes timing isn’t right, but keep the door open for future opportunities.
-> END

= Stay_Out
That’s fair. Everyone has their own preferences. Just know the community is here if you ever want to be part of it.
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
