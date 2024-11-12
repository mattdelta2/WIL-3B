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

 "Here’s a challenge: Imagine you’ve gained that control. What would you sacrifice to keep it?"

* I’d sacrifice my time and energy.
    -> Sacrifice_Time_Energy

* I’d give up anything, even people close to me.
    -> Sacrifice_People

= Sacrifice_Time_Energy
 "Smart choice, bru. Time and effort is what keeps die power balanced."
-> AddEdu
-> Power_Quest_Complete

= Sacrifice_People
 "Ja, maar onthou, losing people kan make die power feel hollow."
-> AddGang
-> Power_Quest_Complete

= Power_Quest_Complete
 "Remember, power is 'n heavy thing. Stay sharp as jy chase it."
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
