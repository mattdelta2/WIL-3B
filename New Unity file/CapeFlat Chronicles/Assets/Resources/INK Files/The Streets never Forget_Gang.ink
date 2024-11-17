INCLUDE Global.ink

// Dialogue 25: The Streets Never Forget
Jy weet mos, bru, die streets forget niks. Alles wat jy do kom back vir jou. Hoe dink jy gaan jy deal met daai?

* I’ll face whatever comes, no matter how hard it is.
    -> Face_Whatever_Comes

* I don’t care what comes back to me.
    -> Dont_Care_What_Comes_Back

* I haven’t thought about it.
    -> Havent_Thought_About_It

// Branch: Face_Whatever_Comes
= Face_Whatever_Comes
Aweh, dis die right mindset, maar onthou, die Flats gaan maak sure jy face dit head-on.

 "Here’s a test: imagine jy’s in a tight spot en jy moet choose between jou safety and helping ‘n broer in need. What would jy do?"

* I’d help my broer, no matter the risk.
    -> AddEdu
     "Respect, bru. Loyalty maak die bond stronger, maar jy moet altyd watch die cost."
    -> Streets_Remember_Challenge_Complete

* I’d prioritize my own safety.
    -> AddGang
     "Ja, sometimes jy moet kijk after jouself first, maar daai gaan come back one day."
    -> Streets_Remember_Challenge_Complete

= Streets_Remember_Challenge_Complete
 "Die streets onthou elke choice, bru. Make sure jy gereed is vir die day when die past come knocking."
-> END

// Branch: Don’t_Care_What_Comes_Back
= Dont_Care_What_Comes_Back
Jy praat mos groot, maar die streets gaan remind jou quickly dat hulle forget niks nie.

* Let them come. I’ll handle it.
    -> Handle_It_When_Comes

// Sub-Branch: Handle_It_When_Comes
= Handle_It_When_Comes
Ons gaan sien, bru. Daai attitude gaan maak jy klaar.
-> AddGang
-> END

// Branch: Haven’t_Thought_About_It
= Havent_Thought_About_It
Jy beter start thinking now. Jou actions gaan follow jou, whether jy like it or nie.

* I’ll figure it out when the time comes.
    -> Figure_It_Out_Later

// Sub-Branch: Figure_It_Out_Later
= Figure_It_Out_Later
Daai time gaan come vinniger as wat jy dink.
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

