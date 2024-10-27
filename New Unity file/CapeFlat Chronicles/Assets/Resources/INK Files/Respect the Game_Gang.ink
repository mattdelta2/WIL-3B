INCLUDE Global.ink

// Dialogue 2: Respect in the Game
Jy weet hier on die streets, respect is mos alles. Jy earn dit or jy lose dit. Wat’s jou plan?

* I want to earn respect the right way.
    -> Earn_Respect_Right_Way

* I’ll take respect any way I can get it.
    -> Take_Respect_Any_Way

* I haven’t thought about respect.
    -> Havent_Thought_About_Respect

// Branch: Earn_Respect_Right_Way
= Earn_Respect_Right_Way
Ek like daai, maar die right way is nie altyd die easiest way. Jy gaan hustle.

* I know, but I’ll work hard for it.
    -> Work_Hard_For_It

* I don’t know if I care about respect.
    -> Dont_Care_Respect

// Sub-Branch: Work_Hard_For_It
= Work_Hard_For_It
Hou aan daai hustle, maar onthou, stay sharp.
-> AddEdu
-> END

// Sub-Branch: Don’t_Care_Respect
= Dont_Care_Respect
As jy nie care nie, die streets gaan nie care for you nie. Better find something jy respect.
-> END

// Branch: Take_Respect_Any_Way
= Take_Respect_Any_Way
Ja, mos. Maar as jy vat it daai way, jy moet watch jou back. People gaan mos kom for jou.

* I’m not scared.
    -> Not_Scared

// Sub-Branch: Not_Scared
= Not_Scared
Jy better not be, bru, die life gaan test jou.
-> AddGang
-> END

// Branch: Haven’t_Thought_About_Respect
= Havent_Thought_About_Respect
Jy better think quick, bru. Without respect, jy’s niks in die game. Vat jou time, maar maak seker jy kry dit.

* I’ll figure it out.
    -> Figure_It_Out

// Sub-Branch: Figure_It_Out
= Figure_It_Out
Better hurry up. Die game wait vir niks.
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1

-> END

= AddGang
~ GangStat += 1

-> END
