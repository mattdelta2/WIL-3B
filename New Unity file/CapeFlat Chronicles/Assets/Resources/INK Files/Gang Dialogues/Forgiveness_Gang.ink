INCLUDE Global.ink

// Dialogue 23: Forgiveness
Op die streets, jy praat van forgiveness, maar nie almal deserve dit nie. Wat’s jou thoughts on daai, bru?

* I believe in giving second chances to those who earn it.
    -> Give_Second_Chances

* I don’t forgive easily.
    -> Dont_Forgive_Easily

* I don’t believe in forgiveness.
    -> Dont_Believe_In_Forgiveness

// Branch: Give_Second_Chances
= Give_Second_Chances
Aweh, maar onthou, jy moet choose wisely wie jy forgive.

* I’ll be careful with who I trust.
    -> Careful_With_Trust

* I’m not sure about forgiveness yet.
    -> Unsure_About_Forgiveness

// Sub-Branch: Careful_With_Trust
= Careful_With_Trust
Good. Die wrong trust kan maak klaar met jou.
-> AddEdu
-> END

// Sub-Branch: Unsure_About_Forgiveness
= Unsure_About_Forgiveness
Jy moet decide vinnig, bru. Die Flats gaan force daai decision on jou.
-> END

// Branch: Don’t_Forgive_Easily
= Dont_Forgive_Easily
Ja, daai’s fair, maar onthou, keeping grudges gaan maak die life harder vir jou.

* I’ll handle it.
    -> Handle_Grudges

// Sub-Branch: Handle_Grudges
= Handle_Grudges
Ons gaan sien, bru. Grudges weigh heavy.
-> AddGang
-> END

// Branch: Don’t_Believe_In_Forgiveness
= Dont_Believe_In_Forgiveness
Jy gaan need to learn how to forgive, bru, anders die hate gaan consume jou.

* I’ll deal with it.
    -> Deal_With_No_Forgiveness

// Sub-Branch: Deal_With_No_Forgiveness
= Deal_With_No_Forgiveness
Ja, jy gaan. Maar die Flats gaan show jou die cost.
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