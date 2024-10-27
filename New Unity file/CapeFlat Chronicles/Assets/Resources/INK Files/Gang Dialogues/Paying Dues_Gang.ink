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

* I’m ready for whatever comes.
    -> Ready_For_Whatever

* I haven’t paid my dues yet, but I’m working on it.
    -> Working_On_Paying_Dues

// Sub-Branch: Ready_For_Whatever
= Ready_For_Whatever
Good, just onthou die streets gaan take more than jy give.
-> AddEdu
-> END

// Sub-Branch: Working_On_Paying_Dues
= Working_On_Paying_Dues
Jy better hurry, bru. Jy gaan need to pay soon, anders jy gaan klaar wees.
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
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END
