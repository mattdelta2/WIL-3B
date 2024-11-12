INCLUDE Global.ink

// Dialogue 7: Fighting for Respect
Jy weet mos, jy fight for jou respect hier on die streets. Jy gaan staan up for jou name, or jy gaan klaar wees.

* I fight for respect, but I try to do it the right way.
    -> Fight_Right_Way

* I’ll fight anyone who disrespects me.
    -> Fight_Anyone_Disrespect

* I’m still figuring out what respect means to me.
    -> Figuring_Out_Respect

// Branch: Fight_Right_Way
= Fight_Right_Way
Aweh, dis 'n strong way, maar it’s nie always easy. Jy gaan have to prove yourself.

* I’m ready to prove myself.
    -> Ready_To_Prove

* I don’t care much about respect.
    -> Dont_Care_About_Respect

// Sub-Branch: Ready_To_Prove
= Ready_To_Prove
Just maak sure jy ready, anders die streets gaan maak jou klaar.
-> AddEdu
-> END

// Sub-Branch: Don’t_Care_About_Respect
= Dont_Care_About_Respect
Jy better start caring, bru. On die streets, without respect, jy’s niks.
-> END

// Branch: Fight_Anyone_Disrespect
= Fight_Anyone_Disrespect
Ja, maar jy moet pick jou fights wisely. Die wrong fight gaan maak jy klaar.

"Here’s a challenge: imagine someone disrespects jou in front of others. How would jy handle it to keep jou respect without causing too much chaos?"

* I’d confront them directly, make sure they know I don’t back down.
    -> AddGang
     "Aweh, jy’s mos serious. But onthou, die Flats gaan onthou jou actions."
    -> Fight_Respect_Complete

* I’d ignore them, showing that I’m above their disrespect.
    -> AddEdu
     "Slim move. Sometimes showing restraint is more powerful."
    -> Fight_Respect_Complete

= Fight_Respect_Complete
 "Good. Die Flats gaan test jou, but remember, respect comes with every choice jy make."
-> END

// Branch: Figuring_Out_Respect
= Figuring_Out_Respect
Die streets gaan teach jou real quick. Jy better learn fast, bru.

* I’ll learn in time.
    -> Learn_In_Time

// Sub-Branch: Learn_In_Time
= Learn_In_Time
Just don’t wait too long, anders respect gaan disappear.
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
