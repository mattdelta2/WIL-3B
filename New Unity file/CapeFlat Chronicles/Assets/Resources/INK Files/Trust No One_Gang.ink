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
    -> Trust_People_First

// Sub-Branch: Be_Careful
= Be_Careful
Good. Stay wakker, anders jy gaan catch a knife in die back.
-> AddEdu
-> END

= Trust_People_First
 "Interessant, maar die Flats gaan test jou trust."

"Here’s a challenge for you: Imagine jy have to show jy’re loyal. Would jy be willing to take a risk?"

* Yes, I’d take the risk to prove my loyalty.
    -> AddGang
     "Goed, loyalty is key. Maar onthou, trust kan gevaarlik wees."
    -> Trust_Quest_Complete

* No, I’d rather play it safe and not risk too much.
    -> AddEdu
     "Wise choice. Staying cautious gaan jou out of trouble hou."
    -> Trust_Quest_Complete

= Trust_Quest_Complete
 "Whether jy take risks or not, onthou die Flats gaan jou test. Stay wakker."
-> END

// Branch: Don’t_Trust_Anyone
= Dont_Trust_Anyone
Ja, mos. Trust gaan jou laat klaar maak. Jy moet stay sharp.

* I know. I’m always watching.
    -> Always_Watching

= Always_Watching
Good. Die Flats respect mense wat wakker bly. Maar jy moet ook leer om met mense te werk as jy wil oorleef.
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
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END

