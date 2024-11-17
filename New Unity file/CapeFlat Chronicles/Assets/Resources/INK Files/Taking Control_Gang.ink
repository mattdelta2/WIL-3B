INCLUDE Global.ink

// Dialogue 24: Taking Control
On die Flats, jy moet take control van jou life, bru, or die streets gaan control jou. Hoe gaan jy daai handle?

* I’m taking control of my future.
    -> Taking_Control_Of_Future

* I’ll take control, no matter the cost.
    -> Control_At_Any_Cost

* I don’t care about control.
    -> Dont_Care_About_Control

// Branch: Taking_Control_Of_Future
= Taking_Control_Of_Future
Aweh, dis ‘n goeie move, maar onthou, die Flats gaan test jou.

 "Here’s a challenge: Imagine jy moet choose tussen jou future en something close to jou heart. Would jy sacrifice something valuable to keep control?"

* I’d make the sacrifice if it means securing my future.
    -> AddEdu
     "Goeie choice, bru. Die Flats gaan reward daai dedication."
    -> Control_Challenge_Complete

* I’m not sure if I’m ready for such a cost.
    -> AddGang
     "Ja, die Flats gaan force jy to face die reality eventually."
    -> Control_Challenge_Complete

= Control_Challenge_Complete
 "Control gaan always come met 'n cost, maar jy moet weet waar jy staan."
-> END

// Branch: Control_At_Any_Cost
= Control_At_Any_Cost
Ja, maar onthou, bru, control is nie always worth die cost.

* I’ll deal with whatever comes.
    -> Deal_With_Cost

// Sub-Branch: Deal_With_Cost
= Deal_With_Cost
Ons gaan sien, maar jy gaan feel daai cost vinnig.
-> AddGang
-> END

// Branch: Don’t_Care_About_Control
= Dont_Care_About_Control
Jy gaan care when die Flats push jou around. Jy moet fight vir jou life.

* We’ll see.
    -> See_About_Control

// Sub-Branch: See_About_Control
= See_About_Control
Ja, ons gaan sien.
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

