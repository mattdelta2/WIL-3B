INCLUDE Global.ink

// Dialogue 9: Loyalty in the Game
Hier op die Flats, loyalty is alles. Jy moet stay loyal, anders jy gaan klaar wees. How you feel about loyalty?

* I’m loyal to the people who have my back.
    -> Loyal_To_People_With_Back

* Loyalty is for people who can’t think for themselves.
    -> Loyalty_Not_For_Me

* I haven’t thought much about loyalty.
    -> Havent_Thought_About_Loyalty

// Branch: Loyal_To_People_With_Back
= Loyal_To_People_With_Back
Aweh, so dit moet wees. Maar onthou, jy better weet wie’s really loyal.

"Here’s a scenario: Imagine one of jou close friends gets into trouble and needs jou help. Wat maak jy?"

* I’d stand by them, no matter what.
    -> AddGang
    "Good. Loyalty is mos about sticking together, through thick en thin."
    -> Loyalty_Task_Complete

* I’d help if I thought it was worth it.
    -> AddEdu
    "Daai’s ‘n smart move. Loyalty’s nie blind nie, bru. Jy moet think carefully."
    -> Loyalty_Task_Complete

= Loyalty_Task_Complete
"Onthou, loyalty maak jou stronger, maar jy moet weet wie deserves jou loyalty."
-> END

// Branch: Loyalty_Not_For_Me
= Loyalty_Not_For_Me
Jy praat mos kak, bru. Without loyalty, jy gaan klaar wees. Jy gaan see die hard way.

* I’ll do what I want.
    -> Do_What_I_Want

// Sub-Branch: Do_What_I_Want
= Do_What_I_Want
Ons gaan sien, bru. Die streets gaan make an example of you.
-> AddGang
-> END

// Branch: Haven’t_Thought_About_Loyalty
= Havent_Thought_About_Loyalty
Jy better start thinking. Loyalty is die key to surviving.

* I’ll figure it out.
    -> Figure_It_Out_Loyalty

// Sub-Branch: Figure_It_Out_Loyalty
= Figure_It_Out_Loyalty
Just don’t figure dit out too late, anders jy gaan kry dit hard.
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
