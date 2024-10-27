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

* I’m ready for it.
    -> Ready_For_Fear

* Fear still gets to me sometimes.
    -> Fear_Still_Gets_To_Me

// Sub-Branch: Ready_For_Fear
= Ready_For_Fear
Good, maar onthou, jy gaan face dit wanneer jy nie expect nie.
-> AddEdu
-> END

// Sub-Branch: Fear_Still_Gets_To_Me
= Fear_Still_Gets_To_Me
Daai’s normal, maar jy moet stay strong, anders fear gaan control jou.
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
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END
