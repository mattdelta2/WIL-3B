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

* I’m ready for it.
    -> Ready_For_It

* I’m not sure if I’m ready for the consequences yet.
    -> Not_Sure_About_Consequences

// Sub-Branch: Ready_For_It
= Ready_For_It
Good, maar jy gaan have to stay strong, bru.
-> AddEdu
-> END

// Sub-Branch: Not_Sure_About_Consequences
= Not_Sure_About_Consequences
Jy moet klaar wees, bru. Die Flats gaan wait for nobody.
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
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END
