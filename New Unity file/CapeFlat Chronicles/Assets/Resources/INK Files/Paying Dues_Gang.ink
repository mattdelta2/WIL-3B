INCLUDE Global.ink

// Dialogue 14: Paying Dues
Hier in die game, jy moet pay jou dues. Niks kom mos for free nie. Hoe’s jy paying jou way, bru?

* I’m working for everything I get. No handouts.
    -> Working_For_Everything

* I take what I want. No need to pay.
    -> Take_What_I_Want_No_Pay

* I haven’t thought about what I owe yet.
    -> Havent_Thought_About_Owing

// Branch: Working_For_Everything
= Working_For_Everything
Aweh, dis ‘n strong move. Jy gaan need to fight for jou place.

"Here’s a challenge: Imagine jy have to earn something valuable by putting in hard work. Would jy take that route?"

* Yes, I’d work hard for it, even if it takes time.
    -> AddEdu
     "Good. Daai’s die mindset jy gaan nodig hê to make it here."
    -> Dues_Task_Complete

* No, I’d rather take shortcuts and get it done quickly.
    -> AddGang
     "Shortcuts gaan jou win for now, but onthou they come with ‘n price."
    -> Dues_Task_Complete

= Dues_Task_Complete
 "Respect, bru. Whether jy hustle or take shortcuts, onthou everyone has dues to pay."
-> END

// Branch: Take_What_I_Want_No_Pay
= Take_What_I_Want_No_Pay
Daai’s dangerous thinking, bru. Die Flats gaan mos make sure jy pay in die end.

* I’m not worried about that.
    -> Not_Worried_About_Paying

// Sub-Branch: Not_Worried_About_Paying
= Not_Worried_About_Paying
Ons gaan sien, bru. Everyone pay in die end.
-> AddGang
-> END

// Branch: Haven’t_Thought_About_Owing
= Havent_Thought_About_Owing
Jy beter start thinking. Niks kom free on die Flats nie.

* I’ll think about it.
    -> Think_About_Dues

// Sub-Branch: Think_About_Dues
= Think_About_Dues
Just don’t wait too long, bru.
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

