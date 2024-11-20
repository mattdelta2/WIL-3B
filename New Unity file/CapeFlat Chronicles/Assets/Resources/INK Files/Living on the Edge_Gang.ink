INCLUDE Global.ink

// Dialogue 16: Living on the Edge
Die Flats is nie vir die weak nie, bru. Jy moet live op die edge, or jy gaan klaar wees. Hoe hard jy push, bru?

* I push hard, but I know my limits.
    -> Push_Hard_With_Limits

* I push until there’s nothing left.
    -> Push_Until_Nothing_Left

* I haven’t figured out how to push yet.
    -> Havent_Figured_Out_How_To_Push

// Branch: Push Hard With Limits
= Push_Hard_With_Limits
Aweh, jy moet know when to pull back. Jy gaan burn out if jy nie careful is nie.

"Hier’s ‘n challenge: imagine jy moet prove jy limits. Jy’s at the **Edge of the Rooftop**—do jy step closer, or play it safe?"

* I’d step closer to prove I’m not scared.
    -> AddGang
     "Brave, bru. Maar onthou, one wrong step, and jy’s klaar."
    -> EdgeQuest_Complete

* I’d play it safe and stay back.
    -> AddEdu
     "Smart move, bru. Die Flats gaan respect jy for staying cautious."
    -> EdgeQuest_Complete

= EdgeQuest_Complete
 "Whether jy push forward or hold back, onthou die Flats gaan test jy every step."
-> END

// Branch: Push Until Nothing Left
= Push_Until_Nothing_Left
Ja, maar onthou, die Flats gaan push back harder. Jy sure jy klaar for dit?

* I’m not scared.
    -> Not_Scared_Of_Pushing_Back

= Not_Scared_Of_Pushing_Back
Ons gaan sien, bru. Just don’t let die Flats maak jou klaar.
-> AddGang
-> END

// Branch: Haven’t Figured Out How to Push
= Havent_Figured_Out_How_To_Push
Jy gaan need to push soon, anders die Flats gaan maak sure jy fall behind.

* I’ll figure it out.
    -> Figure_It_Out_Edge

= Figure_It_Out_Edge
Better jy do, bru. Die edge kom vinnig.
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
