INCLUDE Global.ink

// Dialogue 20: Consequences of Actions
Elke action het consequences, bru. Jy weet dit mos. Wat’s jou view on die choices jy maak hier?

* I think about the consequences before I act.
    -> Think_Before_Acting

* I’ll deal with the consequences when they come.
    -> Deal_With_Consequences_Later

* I don’t care about the consequences.
    -> Dont_Care_About_Consequences

// Branch: Think_Before_Acting
= Think_Before_Acting
Dis goed, maar onthou, soms kom die consequences langer af, bru.

* I’m ready for whatever comes later.
    -> Ready_For_Later_Consequences

* I don’t always think about the consequences.
    -> Dont_Always_Think

// Sub-Branch: Ready_For_Later_Consequences
= Ready_For_Later_Consequences
Good, maar die Flats gaan maak jou face every consequence.
-> AddEdu
-> END

// Sub-Branch: Don’t_Always_Think
= Dont_Always_Think
Jy gaan have to start. Die Flats gaan nie wait for jou om te think nie.
-> END

// Branch: Deal_With_Consequences_Later
= Deal_With_Consequences_Later
Ja, maar onthou, sometimes die consequences kom vinnig, bru.

* I’ll handle them.
    -> Handle_Consequences

// Sub-Branch: Handle_Consequences
= Handle_Consequences
Ons gaan sien, maar jy better klaar wees.
-> AddGang
-> END

// Branch: Don’t_Care_About_Consequences
= Dont_Care_About_Consequences
Jy gaan care when die Flats maak sure jy pay. Jy gaan learn daai lesson.

* We’ll see.
    -> See_Consequences

// Sub-Branch: See_Consequences
= See_Consequences
Ja, die Flats gaan teach jou die hard way.
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
