INCLUDE Global.ink

// Dialogue 26: Community Programs
We offer a variety of programs here. Have you checked any of them out?

* I’m interested in joining some.
    -> Interested_In_Joining

* I don’t think any programs are for me.
    -> Programs_Not_For_Me

* I’m not interested in programs.
    -> Not_Interested

// Branch: Interested_In_Joining
= Interested_In_Joining
That’s awesome! Joining programs can help you grow and connect with others. What type of programs interest you?

* Programs that teach new skills.
    -> Learn_New_Skills

* Programs where I can meet new people.
    -> Meet_New_People

= Learn_New_Skills
Great choice! Learning new skills can open many opportunities for you. Let’s explore what we have available.
-> AddEdu
-> END

= Meet_New_People
That’s wonderful! Building connections can lead to great experiences. Let’s find a program that suits you.
-> AddEdu
-> END

// Branch: Programs_Not_For_Me
= Programs_Not_For_Me
That’s understandable, but trying new things can open unexpected doors. Would you consider checking one out just to see?

* Sure, I’ll give it a try.
    -> Give_It_A_Try

* No, I’m still not interested.
    -> Still_Not_Interested

= Give_It_A_Try
That’s the spirit! Sometimes taking a chance can lead to unexpected benefits. Let me help you get started.
-> AddEdu
-> END

= Still_Not_Interested
That’s okay. It’s your choice. Just remember, opportunities are always there when you’re ready.
-> END

// Branch: Not_Interested
= Not_Interested
That’s okay, but remember, community involvement can enhance your experience here. What’s holding you back?

* I don’t think these programs are relevant to me.
    -> Programs_Not_Relevant

* I don’t feel comfortable joining group activities.
    -> Uncomfortable_With_Groups

= Programs_Not_Relevant
That’s fair. But sometimes, stepping outside your comfort zone can lead to new insights. Consider giving it a shot when you feel ready.
-> END

= Uncomfortable_With_Groups
I understand. Group activities aren’t for everyone. If you ever change your mind, we’re here to help you get started.
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
