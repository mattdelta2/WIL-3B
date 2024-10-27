INCLUDE Global.ink

// Dialogue 28: Making a Name
Hier op die streets, jy moet maak ‘n name vir jou. Of die Flats gaan maak ‘n name for jou, en jy gaan nie like dit nie. Hoe gaan jy jou name build?

* I’ll make my name by staying true to myself.
    -> True_To_Self

* I’ll make my name by any means necessary.
    -> Any_Means_Necessary_Name

* I don’t care about making a name.
    -> Dont_Care_Name

// Branch: True_To_Self
= True_To_Self
Aweh, bru. Maar onthou, staying true is nie always easy nie. Die Flats gaan test jou.

* I’m ready for whatever they throw at me.
    -> Ready_For_Challenge

* I’m not sure how to make a name for myself yet.
    -> Not_Sure_Name

// Sub-Branch: Ready_For_Challenge
= Ready_For_Challenge
Good, maar onthou, die Flats gaan nie make it easy nie.
-> AddEdu
-> END

// Sub-Branch: Not_Sure_Name
= Not_Sure_Name
Jy moet find jou way vinnig. Die Flats gaan nie wait vir jou nie.
-> END

// Branch: Any_Means_Necessary_Name
= Any_Means_Necessary_Name
Ja, maar die wrong means gaan maak enemies, bru. Jy beter wees ready for die cost.

* I’m not worried about enemies.
    -> Not_Worried

// Sub-Branch: Not_Worried
= Not_Worried
Ons gaan sien, bru. Die Flats gaan remind jou quickly.
-> AddGang
-> END

// Branch: Don’t_Care_Name
= Dont_Care_Name
Jy gaan care when die streets forget jou. Jy gaan kry die lesson vinnig.

* We’ll see.
    -> We_Will_See

// Sub-Branch: We_Will_See
= We_Will_See
Ja, ons gaan.
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
