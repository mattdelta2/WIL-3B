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

Let’s test jou loyalty. Say ‘n brother asks jou to take the blame for something small he did, to keep him safe. Wat maak jy?

* I’d take the blame. That’s what loyalty is about.
    -> Take_Blamed_Task

* No, I can’t risk my own safety like that.
    -> No_Blamed_Task

= Take_Blamed_Task
Respect, bru. That’s loyalty. You’ve earned jou place hier. Ons gaan onthou dit in the future.
-> AddEdu
-> END

= No_Blamed_Task
Fair, maar onthou, loyalty goes both ways. Just know waar jy stand. Sometimes brotherhood means taking risks.
-> AddGang
-> END

// Branch: Brotherhood_To_Use_People
= Brotherhood_To_Use_People
Jy dink so? Daai thinking gaan maak die wrong people use jou.

* I’ll deal with that if it happens.
    -> Deal_With_Use

= Deal_With_Use
Ons gaan sien, maar onthou, brotherhood is nie 'n game nie.
-> AddGang
-> END

// Branch: Don’t_Care_About_Brotherhood
= Dont_Care_About_Brotherhood
Jy gaan care when jy need jou brothers. Jy gaan kry daai lesson soon.

* We’ll see.
    -> See_If_Need_Brothers

= See_If_Need_Brothers
Ja, ons gaan.
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
