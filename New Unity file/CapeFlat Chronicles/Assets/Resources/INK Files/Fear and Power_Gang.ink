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

* I stay focused, no matter what.
    -> Stay_Focused

* I don’t know how to deal with fear.
    -> Dont_Know_Deal_With_Fear

// Sub-Branch: Stay_Focused
= Stay_Focused
Aweh. Stay daai way, bru. Fear is 'n killer.
-> AddEdu
-> END

// Sub-Branch: Don’t_Know_Deal_With_Fear
= Dont_Know_Deal_With_Fear
Jy gaan need to face dit. Die streets gaan maak sure jy voel dit eventually.
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
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END