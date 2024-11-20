INCLUDE Global.ink

// Dialogue 6: Hustling for Survival
Hier in die Flats, jy moet hustle vir alles. Niemand gee jou niks nie. Hoe’s jou hustle game?

* I’m working hard, trying to make something of myself.
    -> Working_Hard

* I hustle hard, but I take what I want.
    -> Take_What_I_Want

* I don’t know what my hustle is yet.
    -> Dont_Know_Hustle

// Branch: Working Hard
= Working_Hard
Aweh, bru, just onthou die hustle never stop. Jy moet stay busy, anders die streets gaan kry jou.

* I’m doing what I can.
    -> Doing_What_I_Can

* I’m not sure if I’m hustling enough.
    -> Not_Sure_Hustling_Enough

= Doing_What_I_Can
Good. Just don’t let up, bru.
-> AddEdu
-> END

= Not_Sure_Hustling_Enough
Daai’s dangerous. If jy slack, die life gaan leave jou behind.
-> END

// Branch: Take What I Want
= Take_What_I_Want
Ja, maar jy better watch jou back, bru. Jy vat too much, people gaan come for you.

"Imagine jy’re at die **old warehouse** with a chance to take some valuable supplies. Would jy take it, knowing it might bring trouble?"

* I’ll take it. I’m not scared of the risks.
    -> AddGang
    Gang Leader: "Aweh, jy praat mos. But onthou, die Flats gaan onthou jou actions."
    -> Hustle_Task_Complete

* No, I’ll wait for a better time.
    -> AddEdu
    Gang Leader: "Slim move. Patience is also part van die hustle game, my bru."
    -> Hustle_Task_Complete

= Hustle_Task_Complete
Gang Leader: "Remember, bru, jy hustle defines jou future. Maak seker jy balance dit reg."
-> END

// Branch: Don’t Know Hustle
= Dont_Know_Hustle
Jy better find dit vinnig, bru. Die Flats gaan mos nie wait for jy nie.

* I’ll figure it out soon.
    -> Figure_It_Out_Soon

* Maybe hustling isn’t for me.
    -> Hustling_Not_For_Me

= Figure_It_Out_Soon
Make sure jy do. Jy gaan nodig hê daai hustle.
-> END

= Hustling_Not_For_Me
Jy better think again. Jy kan’t survive hier sonder hustle.
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
