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

* I’m ready for the test.
    -> Ready_For_Test

* I’m not sure how to take control yet.
    -> Unsure_About_Control

// Sub-Branch: Ready_For_Test
= Ready_For_Test
Good. Just onthou, control is nie permanent nie.
-> AddEdu
-> END

// Sub-Branch: Unsure_About_Control
= Unsure_About_Control
Jy gaan need to learn vinnig, bru. Die Flats gaan nie wait for jou nie.
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
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END
