INCLUDE Global.ink

// Dialogue 1: Introduction to the Community Center
Hey there! Welcome to the community center. This place is all about growth and support. How can I assist you today?

* I’m looking for activities to get involved in.
    -> Activities_Involvement

* I just need a place to hang out.
    -> Hang_Out

* I don’t think I want to do anything.
    -> Not_Interested

// Branch: Activities_Involvement
= Activities_Involvement
Aweh! Joining activities can really help you connect and grow. What interests you? We have sports, arts, and education programs.

* I’m interested in sports.
    -> Interested_Sports

// Sub-Branch: Interested_Sports
= Interested_Sports
Great choice! Getting involved in sports helps build teamwork and confidence. You might even meet new friends who share your passion.
-> AddEdu
-> END

// Branch: Hang_Out
= Hang_Out
That’s cool! You’re welcome to chill here. But have you thought about exploring our programs? They can help you make the most of your time here.
-> END

// Branch: Not_Interested
= Not_Interested
I understand. Sometimes, it feels overwhelming. Just remember, there’s support here whenever you’re ready.
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

