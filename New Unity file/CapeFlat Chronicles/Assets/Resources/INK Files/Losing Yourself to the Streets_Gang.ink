INCLUDE Global.ink

// Dialogue 30: Losing Yourself to the Streets
Hier op die Flats, bru, mense lose hulle self quick. Jy moet stay strong, anders die streets gaan swallow jou. Hoe gaan jy stay true to yourself?

* I’ll stick to my values, no matter what.
    -> Stick_To_Values

* I’m not sure how to stay true to myself yet.
    -> Not_Sure_True

* I’ll do whatever it takes to survive, even if I lose myself.
    -> Lose_Myself_Survive

* I haven’t thought about it much.
    -> Havent_Thought_Much

// Branch: Stick_To_Values
= Stick_To_Values
Aweh, dis ‘n goeie mindset, maar die Flats gaan push jou limits, bru.

 "Let’s test daai values van jou: If jy promise to stay true no matter what, jy kan’t break it. Gaan jy die oath vat?"

* Yes, I swear to stick to my values.
    -> AddEdu
     "Goed, bru. Die Flats gaan respect jou for staying true. Maar onthou, dis nie ‘n maklike path nie."
    -> Prove_Yourself_QuestComplete

* I can’t make that promise. I need to stay flexible to survive.
    -> AddGang
     "Fair enough. Die Flats gaan require sacrifices from jy, bru. Jy moet always stay wakker."
    -> Prove_Yourself_QuestComplete

= Prove_Yourself_QuestComplete
 "On die Flats, jy gaan get tested every day. Make sure jy weet wie jy is, before die Flats maak die choice vir jou."
-> END

// Branch: Not_Sure_True
= Not_Sure_True
Jy moet figure dit vinnig uit. Die Flats gaan nie wait vir jou nie.
-> END

// Branch: Lose_Myself_Survive
= Lose_Myself_Survive
Jy praat groot, maar die cost van losing yourself is te high, bru. Jy gaan regret dit.

* I’ll handle it.
    -> Handle_Lose

// Sub-Branch: Handle_Lose
= Handle_Lose
Ons gaan sien, maar die Flats gaan nie forgive maklik nie.
-> AddGang
-> END

// Branch: Haven’t_Thought_Much
= Havent_Thought_Much
Jy moet start thinking. Die streets gaan maak jou forget wie jy is if jy nie watch uit nie.

* I’ll figure it out.
    -> Figure_It_Out

// Sub-Branch: Figure_It_Out
= Figure_It_Out
Better jy do, bru, anders jy gaan klaar wees.
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

