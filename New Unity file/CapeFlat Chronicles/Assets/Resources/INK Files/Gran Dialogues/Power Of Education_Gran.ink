INCLUDE Global.ink

// Dialogue 3: The Power of Education
School might not seem like the most important thing, but trust me, it can change your life. I see you working hard sometimes, and other days it feels like you’re losing your grip. How do you really feel about it?

* I’m doing my best, Gran. I’m studying hard.
    -> Studying_Hard

* It’s a waste of time, Gran. School doesn’t mean much around here.
    -> School_Waste

* I’m not sure, Gran. I don’t hate school, but sometimes I wonder if it’s worth all the effort.
    -> Wondering_If_Worth

// Branch: Studying_Hard
= Studying_Hard
That’s good to hear. But studying isn’t enough if you’re not focused. Are you focusing on the right things?

* I’m doing well in math and science. Those seem like my ticket out of here.
    -> Math_Science

* I’m trying to get by in everything, but it’s hard.
    -> Trying_Get_By

// Sub-Branch: Math_Science
= Math_Science
That’s the kind of thinking you need. Those subjects will open doors for you. Keep at it.
-> AddEdu
-> END

// Sub-Branch: Trying_Get_By
= Trying_Get_By
It’s okay if it’s hard. The important thing is you’re trying. But trying won’t be enough forever. You’ve got to push yourself.
-> END

// Branch: School_Waste
= School_Waste
You think that because the people around here tell you that. But I’ve seen what happens to those who give up on school. They get stuck in a cycle that’s hard to break. What’s making you feel like school doesn’t matter?

* It feels like it’s not preparing me for real life.
    -> Not_Preparing

* I just don’t see how it’ll help me right now.
    -> No_Help_Right_Now

// Sub-Branch: Not_Preparing
= Not_Preparing
Real life will hit you hard, with or without school. But with education, you’ve got a shield. Without it, you’re exposed.
-> AddGang
-> END

// Sub-Branch: No_Help_Right_Now
= No_Help_Right_Now
It might not seem like it now, but education helps you see the bigger picture. You’ll realize its value in time.
-> END

// Branch: Wondering_If_Worth
= Wondering_If_Worth
I get that. It’s easy to wonder when you’re not seeing immediate results. But nothing worth having comes easy. What are you struggling with the most?

* I don’t feel motivated. It’s hard to care.
    -> Hard_To_Care

* I’m trying, but it’s hard to stay focused.
    -> Hard_To_Stay_Focused

// Sub-Branch: Hard_To_Care
= Hard_To_Care
Motivation won’t always be there, but discipline needs to be. If you wait for motivation, you’ll never get anywhere.
-> AddGang
-> END

// Sub-Branch: Hard_To_Stay_Focused
= Hard_To_Stay_Focused
Focus is like a muscle. The more you train it, the stronger it gets. Don’t give up on yourself.
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
