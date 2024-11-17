INCLUDE Global.ink

// Dialogue 3: Surviving the Flats
Hier in die Flats, jy survive of jy gaan klaar wees. Wat’s jou strategy, my broe?

* I’m focusing on staying out of trouble.
    -> Staying_Out_Of_Trouble

* I’m built for this. I’ll survive no matter what.
    -> Built_For_This

* I haven’t figured it out yet.
    -> Havent_Figured_It_Out

// Branch: Staying_Out_Of_Trouble
= Staying_Out_Of_Trouble
Slim move. Maar jy gaan find trouble finds jou, whether jy like it or nie.

 "Here’s a challenge: think about how jy will handle trouble when it finds you. What’s jou plan?"

* I’ll handle it when it comes.
    -> Handle_It_When_It_Comes

* I’m not sure if I can survive here.
    -> Not_Sure_Survive

// Sub-Branch: Handle_It_When_It_Comes
= Handle_It_When_It_Comes
Ja, just be ready, anders jy gaan mos sink.

 "Hier’s ‘n small test to keep jou sharp: imagine jy’re at **Joe’s Corner**, keeping die coast clear. How would jy handle it?"

* I’ll stay hidden and watch from a distance.
    -> AddEdu
     "Smart move, bru. Knowing when to lay low is part of survival."
    -> SurvivingFlats_TaskComplete

* I’d walk around and make my presence known.
    -> AddGang
     "Bold choice, but just make sure jy know who’s watching jou too."
    -> SurvivingFlats_TaskComplete

= SurvivingFlats_TaskComplete
 "Remember, surviving die Flats isn’t net about strength—it’s about knowing when to move and when to stay put."
-> END

// Sub-Branch: Not_Sure_Survive
= Not_Sure_Survive
Jy better maak ‘n plan, bru, before die Flats swallow you whole. Jy check mos?
-> END

// Branch: Built_For_This
= Built_For_This
Aweh, ek hoor jou. Maar die Flats gaan test jou. Better jy stay ready.

* I can handle it.
    -> Built_For_This

 "Maar let’s put jou bravery to the test. What if die Flats turned on you—how would jy react?"

* I’d stand tall and face whatever comes my way.
    -> AddGang
     "Respect, bru. Just don’t let jou ego get in die way of jou survival."
    -> END

* I’d take things one step at a time, not rushing into danger.
    -> AddEdu
     "That’s the way, mos. Survival is a marathon, not a sprint."
    -> END

// Branch: Haven’t_Figured_It_Out
= Havent_Figured_It_Out
Daar’s nie time to figure it out nie. Jy moet act quick, anders jy gaan klaar wees voor jy weet wat aangaan.

* I’ll try.
    -> Try_My_Best

// Sub-Branch: Try_My_Best
= Try_My_Best
Jy better. Trying’s nie always genoeg nie, my broe.
-> AddGang
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

