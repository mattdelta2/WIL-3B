INCLUDE Global.ink

// Dialogue 10: Winning the Game
Jy weet mos, bru, die Flats is ‘n game. Jy moet play to win, or jy gaan klaar wees. How are jy playing the game?

* I’m playing it smart, thinking ahead.
    -> Playing_Smart

* I’ll win, no matter the cost.
    -> Win_At_All_Cost

* I don’t know how to play this game yet.
    -> Dont_Know_How_To_Play

// Branch: Playing_Smart
= Playing_Smart
Aweh, dis how jy survive. Just onthou, die game is nooit over nie.

* I’m always planning my next move.
    -> Always_Planning

* I’m not sure what my next move is yet.
    -> Not_Sure_Next_Move

// Sub-Branch: Always_Planning
= Always_Planning
Good. Stay steps ahead, anders die game gaan maak mos moves on you.
-> AddEdu
-> END

// Sub-Branch: Not_Sure_Next_Move
= Not_Sure_Next_Move
Jy moet maak jou move quick, bru. Die game wait vir niemand.
-> END

// Branch: Win_At_All_Cost
= Win_At_All_Cost
Ja, maar onthou, die cost kan mos wees jou life. Jy sure jy ready for dit?

* I’m ready for anything.
    -> Ready_For_Anything

// Sub-Branch: Ready_For_Anything
= Ready_For_Anything
Ons gaan sien, bru. Just don’t let jou gameplan maak jou klaar.
-> AddGang
-> END

// Branch: Don’t_Know_How_To_Play
= Dont_Know_How_To_Play
Jy gaan have to learn fast, anders jy gaan lose before jy even begin.

* I’ll figure it out.
    -> Figure_It_Out_Game

// Sub-Branch: Figure_It_Out_Game
= Figure_It_Out_Game
Better jy do. Die game gaan wait for no man.
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
