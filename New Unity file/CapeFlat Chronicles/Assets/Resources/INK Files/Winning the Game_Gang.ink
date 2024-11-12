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

"Here’s a challenge for jou, bru: imagine jy moet make a tough decision, choosing between safety or a risky win. Wat maak jy?"

* I’d play it safe and secure my position.
    -> AddEdu
     "Smart, bru. Sometimes die safest play keeps jou in die game longer."
    -> WinningTheGame_TaskComplete

* I’d take the risk for a bigger reward.
    -> AddGang
     "That’s bold, bru. Just onthou, die bigger die risk, die bigger die fall."
    -> WinningTheGame_TaskComplete

= WinningTheGame_TaskComplete
 "Every move jy maak in die game tell. Just onthou, jy play nie net for jou nie, maar for survival."
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
