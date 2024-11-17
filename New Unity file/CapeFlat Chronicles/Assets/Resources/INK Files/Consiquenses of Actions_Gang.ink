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

 "Here’s ‘n small reflection challenge: think about jou last big decision. Was the outcome worth it?"

* Yes, it was worth it.
    -> Worth_It_Outcome

* No, I could have thought more carefully.
    -> Careful_Thought_Outcome

= Worth_It_Outcome
 "Respect, bru. It’s important to stand by jou choices."
-> AddEdu
-> Consequences_Reflection_Complete

= Careful_Thought_Outcome
 "Smart thinking. Jy kan always learn from jou last moves."
-> AddEdu
-> Consequences_Reflection_Complete

= Consequences_Reflection_Complete
 "Remember, die Flats gaan remind jou of jou choices. Stay sharp."
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
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END

