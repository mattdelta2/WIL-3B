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

* I’ll handle it when it comes.
    -> Handle_It_When_It_Comes

* I’m not sure if I can survive here.
    -> Not_Sure_Survive

// Sub-Branch: Handle_It_When_It_Comes
= Handle_It_When_It_Comes
Ja, just be ready, anders jy gaan mos sink.
-> AddEdu
-> END

// Sub-Branch: Not_Sure_Survive
= Not_Sure_Survive
Jy better maak ‘n plan, bru, before die Flats swallow you whole. Jy check mos?
-> END

// Branch: Built_For_This
= Built_For_This
Aweh, ek hoor jou. Maar die Flats gaan test jou. Better jy stay ready.

* I can handle it.
    -> Can_Handle_It

// Sub-Branch: Can_Handle_It
= Can_Handle_It
Ons gaan sien, bru. The Flats don’t play.
-> AddGang
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
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END
