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

* Maybe respect is too difficult to get the "right way."
    -> Respect_Is_Hard_Quest

= Work_Hard_For_It
Hou aan daai hustle, maar onthou, stay sharp.
-> AddEdu
-> END

= Respect_Is_Hard_Quest
"Here’s something to test jou grit: Go to **the park at night** and leave a message for the gang—just to show jy’s not scared to be seen. Are you up for it?"

* I’ll do it. Respect moet earned word.
    -> AddGang
     "Good, jy moet wees braaf on die streets."
    -> QuestComplete_Respect

* No, it’s not worth the risk.
    -> AddEdu
     "Wise choice—respect can also mean knowing jou limits."
    -> QuestComplete_Respect

= QuestComplete_Respect
 "Remember, respect goes both ways. Jy earn dit in different ways, but don’t forget jou roots."
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
~ GangStat = MIN(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END
