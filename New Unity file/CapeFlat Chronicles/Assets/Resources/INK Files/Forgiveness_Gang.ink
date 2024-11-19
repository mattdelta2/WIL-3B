INCLUDE Global.ink

// Dialogue 23: Forgiveness
Op die streets, jy praat van forgiveness, maar nie almal deserve dit nie. Wat’s jou thoughts on daai, bru?

* I believe in giving second chances to those who earn it.
    -> Give_Second_Chances

* I don’t forgive easily.
    -> Dont_Forgive_Easily

* I don’t believe in forgiveness.
    -> Dont_Believe_In_Forgiveness

// Branch: Give Second Chances
= Give_Second_Chances
Aweh, maar onthou, jy moet choose wisely wie jy forgive.

 "Let’s put daai mindset to the test: Imagine iemand betrayed jou, but they ask for forgiveness. Would jy forgive or keep jou distance?"

* I’d give them another chance, but watch them closely.
    -> AddEdu
     "Slim move, bru. Forgiveness with caution can show strength."
    -> Forgiveness_Challenge_Complete

* I’d keep my distance, forgiveness or not.
    -> AddGang
     "Ja, jy weet mos. Trust moet earned wees, nie given nie."
    -> Forgiveness_Challenge_Complete

= Forgiveness_Challenge_Complete
 "Remember, forgiveness kan bring peace, maar blind forgiveness gaan bring trouble."
-> END

// Branch: Don’t Forgive Easily
= Dont_Forgive_Easily
Ja, daai’s fair, maar onthou, keeping grudges gaan maak die life harder vir jou.

 "Imagine jy sien iemand wat hurt jou asking for help. Wat maak jy?"

* I’d help them, but only because it’s the right thing to do.
    -> AddEdu
     "Good, bru. Helping without forgetting is powerful."
    -> Grudge_Challenge_Complete

* I’d walk away. It’s not my problem.
    -> AddGang
     "Ja, maar onthou, the Flats onthou ook jou moves."
    -> Grudge_Challenge_Complete

= Grudge_Challenge_Complete
 "Grudges maak jou heavy, bru. Maar jy moet find jou balance."
-> END

// Branch: Don’t Believe in Forgiveness
= Dont_Believe_In_Forgiveness
Jy gaan need to learn how to forgive, bru, anders die hate gaan consume jou.

 "Imagine jy kry 'n chance om revenge te vat. Sou jy dit vat, or sou jy walk away?"

* I’d take revenge. They deserve it.
    -> AddGang
     "Ja, maar onthou, revenge kom met ‘n price."
    -> No_Forgiveness_Challenge_Complete

* I’d walk away. It’s not worth my time.
    -> AddEdu
     "Goed, bru. Walking away from revenge is true strength."
    -> No_Forgiveness_Challenge_Complete

= No_Forgiveness_Challenge_Complete
 "Die Flats gaan altyd toets jou, bru. Maar onthou, hate gaan nie jou peace bring nie."
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
