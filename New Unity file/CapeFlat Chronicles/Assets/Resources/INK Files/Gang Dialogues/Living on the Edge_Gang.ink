INCLUDE Global.ink

// Dialogue 16: Living on the Edge
Die Flats is nie vir die weak nie, bru. Jy moet live op die edge, or jy gaan klaar wees. Hoe hard jy push, bru?

* I push hard, but I know my limits.
    -> Push_Hard_With_Limits

* I push until there’s nothing left.
    -> Push_Until_Nothing_Left

* I haven’t figured out how to push yet.
    -> Havent_Figured_Out_How_To_Push

// Branch: Push_Hard_With_Limits
= Push_Hard_With_Limits
Aweh, jy moet know when to pull back. Jy gaan burn out if jy nie careful is nie.

* I keep my head clear.
    -> Keep_Head_Clear

* I’m not sure how far to push yet.
    -> Not_Sure_How_Far_To_Push

// Sub-Branch: Keep_Head_Clear
= Keep_Head_Clear
Good, bru. Just onthou, die edge is closer than jy dink.
-> AddEdu
-> END

// Sub-Branch: Not_Sure_How_Far_To_Push
= Not_Sure_How_Far_To_Push
Jy gaan find out soon, bru. Die Flats gaan maak sure of daai.
-> END

// Branch: Push_Until_Nothing_Left
= Push_Until_Nothing_Left
Ja, maar onthou, die Flats gaan push back harder. Jy sure jy klaar for dit?

* I’m not scared.
    -> Not_Scared_Of_Pushing_Back

// Sub-Branch: Not_Scared_Of_Pushing_Back
= Not_Scared_Of_Pushing_Back
Ons gaan sien, bru. Just don’t let die Flats maak jou klaar.
-> AddGang
-> END

// Branch: Haven’t_Figured_Out_How_To_Push
= Havent_Figured_Out_How_To_Push
Jy gaan need to push soon, anders die Flats gaan maak sure jy fall behind.

* I’ll figure it out.
    -> Figure_It_Out_Edge

// Sub-Branch: Figure_It_Out_Edge
= Figure_It_Out_Edge
Better jy do, bru. Die edge kom vinnig.
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
