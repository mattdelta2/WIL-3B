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

 "Here’s ‘n quick test: Jy’s faced with ‘n choice—someone disrespects jou, but handling it could cause trouble. How jy gaan approach dit?"

* I’d let it go. A name isn’t worth unnecessary fights.
    -> AddEdu
     "Dis wysheid, bru. Jy build jou name deur die battles jy kies."
    -> Name_Test_Complete

* I’d stand up and make sure they know my name.
    -> AddGang
     "Jy praat groot, maar onthou, die Flats gaan altyd kyk of jy serious is."
    -> Name_Test_Complete

= Name_Test_Complete
 "Jy gaan learn vinnig dat every move jou name build or break."
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
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END

