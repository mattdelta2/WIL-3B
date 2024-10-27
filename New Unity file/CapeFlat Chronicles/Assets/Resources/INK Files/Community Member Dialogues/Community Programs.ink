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
That’s awesome! Joining programs can help you grow and connect with others.

* I’d like to learn more about them.
    -> Learn_More

// Sub-Branch: Learn_More
= Learn_More
Great! I can provide you with all the information you need.
-> AddEdu
-> END

// Branch: Programs_Not_For_Me
= Programs_Not_For_Me
That’s understandable, but trying new things can open unexpected doors. What have you got to lose?
-> END

// Branch: Not_Interested
= Not_Interested
That’s okay, but remember, community involvement can enhance your experience here.
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
