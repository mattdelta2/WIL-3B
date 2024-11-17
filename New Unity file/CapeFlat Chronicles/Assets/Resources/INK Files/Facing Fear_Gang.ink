INCLUDE Global.ink

// Dialogue 22: Facing Fear
Jy moet face fear in die Flats, bru. Jy gaan sink if jy nie ready is nie. Hoe deal jy met fear?

* I face fear head-on. I don’t let it control me.
    -> Face_Fear_Head_On

* I don’t fear anything.
    -> No_Fear

* I’m still learning how to deal with fear.
    -> Learning_To_Deal_With_Fear

// Branch: Face_Fear_Head_On
= Face_Fear_Head_On
Aweh, dis goeie thinking. Jy moet strong bly, bru, maar fear kom vir almal.

 "Let’s see how jy handle fear. Imagine jy have to walk through die darkest alley in die Flats. Wat’s jou move?"

* I’d keep my head high and walk with confidence.
    -> AddEdu
     "Good move, bru. Fear respect confidence, but jy moet watch jou back."
    -> Fear_Challenge_Complete

* I’d stay low, making sure no one can spot me.
    -> AddGang
     "Smart, jy weet how to survive. But onthou, jy can’t always hide."
    -> Fear_Challenge_Complete

= Fear_Challenge_Complete
 "Facing fear is part of die game, bru. Die Flats gaan maak sure jy test jou strength."
-> END

// Branch: No_Fear
= No_Fear
Jy dink so, bru, maar die Flats gaan maak sure jy face daai fear. Nobody’s invincible.

* We’ll see.
    -> See_If_Invincible

// Sub-Branch: See_If_Invincible
= See_If_Invincible
Ja, jy gaan sien wanneer die Flats bring die fear.
-> AddGang
-> END

// Branch: Learning_To_Deal_With_Fear
= Learning_To_Deal_With_Fear
Jy gaan have to learn vinnig. Fear gaan nie wait for jou nie.

* I’ll figure it out.
    -> Figure_Out_Fear

// Sub-Branch: Figure_Out_Fear
= Figure_Out_Fear
Maak seker jy do, anders fear gaan klaar maak met jou.
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

