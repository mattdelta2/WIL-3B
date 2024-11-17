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

"Here’s a challenge: imagine jy have to teach a younger kid about surviving die Flats. How would jy do it?"

* I’d show them what to watch out for and keep them safe.
    -> AddEdu
     "Good, bru. Knowledge is mos power, especially hier."
    -> Wisdom_Task_Complete

* I’d tell them to be tough and trust no one.
    -> AddGang
     "Ja, so moet dit wees. Die Flats gaan mos teach jou to be wary."
    -> Wisdom_Task_Complete

= Wisdom_Task_Complete
 "Remember, bru, learning from die Flats is nie just about yourself—it’s about knowing what keeps jy and jou people safe."
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
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END

