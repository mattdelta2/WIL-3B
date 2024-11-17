INCLUDE Global.ink

// Dialogue 8: Fear and Power
Jy weet mos, bru, fear is 'n tool. Die strong gebruik fear, maar jy moet nie laat fear use you nie. Hoe voel jy oor fear?

* I try not to let fear control me.
    -> Dont_Let_Fear_Control

* I use fear to get what I want.
    -> Use_Fear

* I’m still learning how to deal with fear.
    -> Learning_To_Deal_With_Fear

// Branch: Don’t_Let_Fear_Control
= Dont_Let_Fear_Control
Daai’s goeie thinking. Jy moet keep jou kop skoon, anders fear gaan mos eat jou alive.

"Imagine jy staan voor die biggest threat hier in die Flats. Hoe sou jy jou fear gebruik of hanteer?"

* I’d confront it head-on, showing I’m not afraid.
    -> AddGang
     "Aweh, dis mos guts. Maar onthou, die Flats kyk altyd, bru."
    -> Fear_Task_Complete

* I’d control my fear, staying calm and focused.
    -> AddEdu
     "Daai’s slim. Keep jou mind steady; die Flats respects calm onder pressure."
    -> Fear_Task_Complete

= Fear_Task_Complete
 "Jy’s reg. Die Flats gaan jou fear test. Just don’t let jou emotions control jou moves."
-> END

// Branch: Use_Fear
= Use_Fear
Ja, maar onthou, fear kan turn on jou quick. Better jy don’t rely on dit too much.

* I know how to handle it.
    -> Handle_Fear

// Sub-Branch: Handle_Fear
= Handle_Fear
Ons gaan sien, bru. Fear is nie jou vriend nie.
-> AddGang
-> END

// Branch: Learning_To_Deal_With_Fear
= Learning_To_Deal_With_Fear
Jy gaan learn quick. Die Flats gaan force you to face fear.

* I’ll handle it when it comes.
    -> Handle_It_When_Comes

// Sub-Branch: Handle_It_When_Comes
= Handle_It_When_Comes
Just maak sure jy handle it, anders fear gaan run jou.
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

