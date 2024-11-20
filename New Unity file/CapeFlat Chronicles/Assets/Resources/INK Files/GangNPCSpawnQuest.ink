INCLUDE Global.ink

// Dialogue with Sizwe: Learning About Trust
You find Sizwe leaning against the wall at the Old Warehouse, watching the world with wary eyes. As you approach, he nods slightly, acknowledging your presence.

Sizwe: Ek hoor jy soek answers about trust. You think jy’s ready for die truth?

* I think I am. Tell me what I need to know.
    -> Ready_For_Truth

* I don’t know if anyone can really be trusted.
    -> Dont_Trust_Anyone

* I’m just here because I was told to come.
    -> Just_Here_Because_Told

// Branch: Ready_For_Truth
= Ready_For_Truth
Sizwe: Aweh. Die Flats gaan test jou, bru, but the biggest lesson? Die people who stand next to jou in the worst times – daai’s who jy trust.

* How do I know who’s real and who’s just faking it?
    -> Real_vs_Fake

// Sub-Branch: Real_vs_Fake
= Real_vs_Fake
Sizwe: Jy’s gotta watch, not listen. Words mean niks hier. Actions praat. Check wie’s daar when things go south.

* Makes sense. I’ll keep my eyes open.
    -> Acknowledge_Wisdom

= Acknowledge_Wisdom
Sizwe: Good. Jy kan’t afford to be blind out here. And onthou, those who push you to the edge, they’ll leave jou hanging.
-> AddGang
-> END

// Branch: Don’t Trust Anyone
= Dont_Trust_Anyone
Sizwe: Slim, bru. Trust no one and no one can hurt jou. But onthou, jy kan’t survive alleen. Someday, jy gaan need somebody.

* I don’t need anyone.
    -> Self_Reliance

* Maybe. But that day isn’t today.
    -> Not_Today

= Self_Reliance
Sizwe: Mos, jy think so. But life will humble jou, quick quick. Be careful jy don’t burn all die bridges.
-> AddGang
-> END

= Not_Today
Sizwe: Alright. Just onthou, isolation maak jou an easy target. No one’s watching jou back.
-> AddGang
-> END

// Branch: Just_Here_Because_Told
= Just_Here_Because_Told
Sizwe: You think jy’s wasting jou time, huh? Ek gaan tell jou this: Jou attitude gaan get you killed. Out here, jy better know who jy is dealing with.

* Alright. I’ll listen.
    -> Decide_To_Listen

= Decide_To_Listen
Sizwe: Good. If jy don’t trust die right people, jy gaan find out die hard way. Mark my words, bru.
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
