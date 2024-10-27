INCLUDE Global.ink

// Dialogue 1: Life on the Streets
Hey bru, jy weet die life hier on the Flats is tough, né? You gotta keep your head up, otherwise die streets gaan vat jou.

* Yeah, I get it. I’m trying to keep out of trouble.
    -> Keep_Out_Of_Trouble

* The streets are calling me. I’m ready for whatever.
~ gangQuestStarted = false
    -> Streets_Calling

* I’m not sure what to do.
    -> Not_Sure_What_To_Do

// Branch: Keep_Out_Of_Trouble
= Keep_Out_Of_Trouble
Aweh, that’s the plan. But maak ‘n plan quick quick, 'cause trouble don’t wait, my broe.

* I’ve been staying focused on school.
    -> Focused_On_School

* I don’t know if I can handle it all.
    -> Dont_Know_If_Handle

// Sub-Branch: Focused_On_School
= Focused_On_School
Good good, maar don’t let them catch you slipping, bru. 
-> AddEdu
-> END

// Sub-Branch: Don’t_Know_If_Handle
= Dont_Know_If_Handle
You better maak ‘n plan or the streets gaan maak jou plan for you, you check?
-> END

// Branch: Streets_Calling
= Streets_Calling
Dis so, bru. But jy better remember, this life kom met a price, né. Jy can’t back out easy.

* I’m ready for anything.
    -> Ready_For_Anything

* {gangQuestStarted == false} How can I prove myself?
    -> Start_Gang_Quest

* {gangQuestStarted == true} What’s next in proving myself?
    -> Next_Steps_In_Quest

// Sub-Branch: Ready_For_Anything
= Ready_For_Anything
Jy praat mos nou, but jy moet prove it, ek sê.
-> AddGang
-> END

// Branch: Not_Sure_What_To_Do
= Not_Sure_What_To_Do
Tsek with the doubt, my bru. Jy moet focus, anders jy gaan net drown in die chaos.

* I’ll figure it out.
    -> Figure_It_Out

// Sub-Branch: Figure_It_Out
= Figure_It_Out
Better do it soon, anders jy gaan klaar wees.
-> AddGang
-> END

// Quest Start: Gang Quest
= Start_Gang_Quest
Aweh, I like that spirit. If jy really want to join us, I have a small job for you. Let’s see if jy kan handle die pressure.
~ gangQuestStarted = true
* What’s next in proving myself?
    -> Next_Steps_In_Quest
-> END

// Branch: Next Steps in Quest
= Next_Steps_In_Quest
Good, so you’re in. You’ll need to show some skills. I want you to go get something for me. Go find the white box for me 
* I’ll get it done.
    -> Quest_In_Progress

// Quest In Progress
= Quest_In_Progress
Just remember, loyalty is key. Don’t let anyone down. Return to me once you’re finished.
-> AddGang
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
-> END

= AddGang
~ GangStat += 1
-> END
