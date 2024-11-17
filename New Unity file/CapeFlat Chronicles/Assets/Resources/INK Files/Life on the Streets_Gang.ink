INCLUDE Global.ink

// Dialogue 1: Life on the Streets
Hey bru, jy weet die life hier on the Flats is tough, né? You gotta keep your head up, otherwise die streets gaan vat jou.

* Yeah, I get it. I’m trying to keep out of trouble.
    -> Keep_Out_Of_Trouble

* The streets are calling me. I’m ready for whatever.
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
Good good, maar don’t let them catch you slipping, bru. School is important, maar jy moet nie vergeet waar jy vandaan kom nie. You’ll have to balance the two.
-> AddEdu
-> END

// Sub-Branch: Don’t_Know_If_Handle
= Dont_Know_If_Handle
You better maak ‘n plan or the streets gaan maak jou plan for you, you check? But hey, you want a small task to see if you can handle die pressure?
    
* Yeah, give me something to prove myself.
    -> Small_Task

* No, I need to focus on school.
    -> Focus_School_No_Task

= Small_Task
Goed, here’s what you do: Go find die **old bench by the basketball court** and bring me the bottle under it. It’s nothing big, but it’s about showing jy kan handle even the small things.
-> AddGang
-> END

= Focus_School_No_Task
Alright, maar onthou, the streets don’t wait. Jy better be ready when the time comes.
-> END

// Branch: Streets_Calling
= Streets_Calling
Dis so, bru. But jy better remember, this life kom met a price, né. Jy can’t back out easy.

* I’m ready for anything.
    -> Ready_For_Anything

* How can I prove myself?
    -> Small_Gang_Task

// Sub-Branch: Ready_For_Anything
= Ready_For_Anything
Jy praat mos nou, but jy moet prove it, ek sê. Here’s something to test jy: Go to **Dino’s Corner** and bring back the red bandana that’s hanging there. Just a small show of loyalty.
-> AddGang
-> END

= Small_Gang_Task
Aweh, I like that spirit. Go to **Dino’s Corner** and bring back the red bandana that’s hanging there. Show you’re serious, bru.
-> AddGang
-> END

// Branch: Not_Sure_What_To_Do
= Not_Sure_What_To_Do
Tsek with the doubt, my bru. Jy moet focus, anders jy gaan net drown in die chaos.

* I’ll figure it out.
    -> Figure_It_Out

* Maybe you’re right. I need to see what I’m made of.
    -> Explore_Self_Task

= Figure_It_Out
Better do it soon, anders jy gaan klaar wees.
-> AddGang
-> END

= Explore_Self_Task
Aweh, nou jy praat. Here’s what you do: go to the **old bus stop** and bring back the chalk there. Small tasks test jy nerves, you feel me?
-> AddGang
-> END

= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END
