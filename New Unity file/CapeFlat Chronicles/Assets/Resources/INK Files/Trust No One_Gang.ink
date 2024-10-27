INCLUDE Global.ink

// Dialogue 4: Trust No One
On die streets, jy trust niemand nie. Jy weet mos, trust can get jou killed, bru. How you playing it?

* I’m keeping to myself, only trusting those close to me.
    -> Keeping_To_Self

* I don’t trust anyone. Everyone’s out for themselves.
    -> Dont_Trust_Anyone

* I haven’t thought about who I can trust.
    -> Havent_Thought_About_Trust

// Branch: Keeping_To_Self
= Keeping_To_Self
Ja, dis slim, maar watch out, even those jy dink is close, kan turn on jou.

* I’ll be careful.
    -> Be_Careful

* I trust people until they give me a reason not to.
    -> Trust_Until_Reason

// Sub-Branch: Be_Careful
= Be_Careful
Good. Stay wakker, anders jy gaan catch a knife in die back.
-> AddEdu
-> END

// Sub-Branch: Trust_Until_Reason
= Trust_Until_Reason
Daai’s dangerous, bru. On die streets, reasons kom mos too late. Watch jou back.
-> END

// Branch: Don’t_Trust_Anyone
= Dont_Trust_Anyone
Ja, mos. Trust gaan jou laat klaar maak. Jy moet stay sharp.

* I know. I’m always watching.
    -> Always_Watching

// Sub-Branch: Always_Watching
= Always_Watching
Good. Jy gaan need that, bru, 'cause die game is rough.
-> AddGang
-> END

// Branch: Haven’t_Thought_About_Trust
= Havent_Thought_About_Trust
Jy moet think now, bru. Jy gaan find out die hard way as jy nie wake up nie.

* I’ll figure it out.
    -> Figure_Out_Trust

// Sub-Branch: Figure_Out_Trust
= Figure_Out_Trust
Better jy figure it out quick. Trust maak ‘n big difference here.
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
