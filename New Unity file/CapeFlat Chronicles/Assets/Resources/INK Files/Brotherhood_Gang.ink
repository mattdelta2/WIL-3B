INCLUDE Global.ink

// Dialogue 19: Brotherhood
Ons praat altyd van brotherhood on die streets, bru. Maar brotherhood kom met die price. Wat beteken daai vir jou?

* Brotherhood is about trust and loyalty.
    -> Trust_And_Loyalty

* Brotherhood is just a way to use people.
    -> Brotherhood_To_Use_People

* I don’t care about brotherhood.
    -> Dont_Care_About_Brotherhood

// Branch: Trust_And_Loyalty
= Trust_And_Loyalty
Aweh, bru. Maar onthou, brotherhood is nie just about loyalty, maar die sacrifices jy moet maak.

 "Let’s test jou loyalty. Say ‘n brother asks jou to take the blame for something small he did, to keep him safe. Wat maak jy?"

* I’d take the blame. That’s what loyalty is about.
    -> Take_Blamed_Task
     "Respect, bru. That’s loyalty. You’ve earned jou place here."
    -> Brotherhood_Quest_Complete

* No, I can’t risk my own safety like that.
    -> No_Blamed_Task
     "Fair, but onthou, loyalty goes both ways. Just know waar jy stand."
    -> Brotherhood_Quest_Complete

= Brotherhood_Quest_Complete
 "Remember, brotherhood is more than words—it’s action."
-> END

// Sub-Branch: Take_Blamed_Task
= Take_Blamed_Task
Good choice, bru. Jy showed jy can be trusted. Ons gaan onthou dit in the future.
-> AddEdu
-> END

// Sub-Branch: No_Blamed_Task
= No_Blamed_Task
Ek verstaan. Just onthou, sometimes brotherhood means taking risks.
-> AddGang
-> END

// Branch: Brotherhood_To_Use_People
= Brotherhood_To_Use_People
Jy dink so? Daai thinking gaan maak die wrong people use jou.

* I’ll deal with that if it happens.
    -> Deal_With_Use

// Sub-Branch: Deal_With_Use
= Deal_With_Use
Ons gaan sien, maar brotherhood is nie 'n game nie.
-> AddGang
-> END

// Branch: Don’t_Care_About_Brotherhood
= Dont_Care_About_Brotherhood
Jy gaan care when jy need jou brothers. Jy gaan kry daai lesson soon.

* We’ll see.
    -> See_If_Need_Brothers

// Sub-Branch: See_If_Need_Brothers
= See_If_Need_Brothers
Ja, ons gaan.
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
