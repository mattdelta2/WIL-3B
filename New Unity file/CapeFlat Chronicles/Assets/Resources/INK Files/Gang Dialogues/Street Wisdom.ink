INCLUDE Global.ink

// Dialogue 15: Street Wisdom
Die Flats gaan teach jou, bru. Jy gaan learn die hard way if jy nie wakker bly nie. Hoeveel het jy al geleer hier?

* I’m learning fast. I watch everything around me.
    -> Learning_Fast

* I don’t need lessons from the streets. I know enough.
    -> Dont_Need_Lessons

* I haven’t learned much yet.
    -> Havent_Learned_Much

// Branch: Learning_Fast
= Learning_Fast
Aweh, jy moet learn quick, anders die Flats gaan mos maak a fool van jou.

* I’m ready to keep learning.
    -> Keep_Learning

* I’m still figuring out how things work here.
    -> Figuring_Out_How_Things_Work

// Sub-Branch: Keep_Learning
= Keep_Learning
Good. Just onthou, die lesson gaan never end nie.
-> AddEdu
-> END

// Sub-Branch: Figuring_Out_How_Things_Work
= Figuring_Out_How_Things_Work
Jy moet learn fast, bru. Die Flats gaan mos nie wait for jou nie.
-> END

// Branch: Don’t_Need_Lessons
= Dont_Need_Lessons
Jy praat groot, maar die Flats gaan mos teach jou anyway.

* I’ll handle whatever comes.
    -> Handle_Whatever_Comes

// Sub-Branch: Handle_Whatever_Comes
= Handle_Whatever_Comes
Ons gaan sien, maar die Flats gaan mos maak ‘n example van jou.
-> AddGang
-> END

// Branch: Haven’t_Learned_Much
= Havent_Learned_Much
Jy gaan have to learn quick, bru. Die Flats gaan maak sure jy kry die lesson.

* I’ll figure it out.
    -> Figure_It_Out_Wisdom

// Sub-Branch: Figure_It_Out_Wisdom
= Figure_It_Out_Wisdom
Better jy do, anders die streets gaan klaar maak met jou.
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
