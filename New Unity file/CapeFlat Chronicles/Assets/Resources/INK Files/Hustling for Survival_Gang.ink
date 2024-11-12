INCLUDE Global.ink

// Dialogue 6: Hustling for Survival
Hier in die Flats, jy moet hustle vir alles. Niemand gee jou niks nie. Hoe’s jou hustle game?

* I’m working hard, trying to make something of myself.
    -> Working_Hard

* I hustle hard, but I take what I want.
    -> Take_What_I_Want

* I don’t know what my hustle is yet.
    -> Dont_Know_Hustle

// Branch: Working_Hard
= Working_Hard
Aweh, bru, just onthou die hustle never stop. Jy moet stay busy, anders die streets gaan kry jou.

* I’m doing what I can.
    -> Doing_What_I_Can

* I’m not sure if I’m hustling enough.
    -> Not_Sure_Hustling_Enough

// Sub-Branch: Doing_What_I_Can
= Doing_What_I_Can
Good. Just don’t let up, bru.
-> AddEdu
-> END

// Sub-Branch: Not_Sure_Hustling_Enough
= Not_Sure_Hustling_Enough
Daai’s dangerous. If jy slack, die life gaan leave jou behind.
-> END

// Branch: Take_What_I_Want
= Take_What_I_Want
Ja, maar jy better watch jou back, bru. Jy vat too much, people gaan come for you.

"Here’s a challenge for jou hustle: imagine jy’re at die **old warehouse** with a choice to take some valuable supplies. Would jy take it, knowing it might bring attention?"

* I’ll take it. I’m not scared of the risks.
    -> AddGang
    Gang Leader: "Aweh, jy praat mos. But onthou, die Flats gaan remember jou actions."
    -> Hustle_Task_Complete

* No, I’ll wait for a better time.
    -> AddEdu
    Gang Leader: "Slim move. Patience is also part van die hustle game, my bru."
    -> Hustle_Task_Complete

= Hustle_Task_Complete
Gang Leader: "Remember, bru, jy hustle defines jou future. Maak seker jy balance dit reg."
-> END

// Branch: Don’t_Know_Hustle
= Dont_Know_Hustle
Jy better find dit quick, bru. Die Flats gaan mos nie wait for jy nie.

* I’ll figure it out soon.
    -> Figure_It_Out_Soon

// Sub-Branch: Figure_It_Out_Soon
= Figure_It_Out_Soon
Make sure jy do. Jy gaan nodig hê daai hustle.
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
