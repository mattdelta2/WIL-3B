INCLUDE Global.ink

// Dialogue 21: The Cost of Power
Power kom met a price, bru. Jy gaan have to decide if jy klaar vir daai price. Hoeveel power jy soek?

* I want enough power to control my own destiny.
    -> Control_Own_Destiny

* I want all the power I can get.
    -> All_The_Power

* I don’t care about power.
    -> Dont_Care_About_Power

// Branch: Control_Own_Destiny
= Control_Own_Destiny
Aweh, maar onthou, controlling jou destiny kom met die weight of responsibility.

* I’m ready for it.
    -> Ready_For_Responsibility

* I’m not sure how much power I want yet.
    -> Not_Sure_How_Much_Power

// Sub-Branch: Ready_For_Responsibility
= Ready_For_Responsibility
Good, maar jy moet stay sharp. Power maak enemies.
-> AddEdu
-> END

// Sub-Branch: Not_Sure_How_Much_Power
= Not_Sure_How_Much_Power
Jy gaan need to find out vinnig, bru. Power wait nie vir niemand nie.
-> END

// Branch: All_The_Power
= All_The_Power
Ja, maar onthou, bru, die more power jy take, die more jy moet pay.

* I’ll pay whatever it takes.
    -> Pay_Whatever_It_Takes

// Sub-Branch: Pay_Whatever_It_Takes
= Pay_Whatever_It_Takes
Ons gaan sien, maar die Flats gaan maak sure jy feel die cost.
-> AddGang
-> END

// Branch: Don’t_Care_About_Power
= Dont_Care_About_Power
Jy gaan care when die world starts pushing jy around. Jy gaan kry daai lesson.

* I’ll handle whatever comes.
    -> Handle_Without_Power

// Sub-Branch: Handle_Without_Power
= Handle_Without_Power
Ons gaan sien, bru, maar die Flats gaan show jou.
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
