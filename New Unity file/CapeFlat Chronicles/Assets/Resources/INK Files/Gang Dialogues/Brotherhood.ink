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

* I’m willing to make those sacrifices for my brothers.
    -> Willing_To_Sacrifice

* I’m not sure what brotherhood means to me yet.
    -> Not_Sure_What_Brotherhood_Means

// Sub-Branch: Willing_To_Sacrifice
= Willing_To_Sacrifice
Good, maar jy better wees ready for die weight wat kom met daai.
-> AddEdu
-> END

// Sub-Branch: Not_Sure_What_Brotherhood_Means
= Not_Sure_What_Brotherhood_Means
Jy gaan find uit vinnig, bru. Die Flats gaan teach jou what brotherhood really is.
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
