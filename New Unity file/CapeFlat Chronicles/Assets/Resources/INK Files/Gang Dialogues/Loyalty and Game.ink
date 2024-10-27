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

* I know who I can trust.
    -> Know_Who_To_Trust

* I’m not sure who I can trust yet.
    -> Not_Sure_Who_To_Trust

// Sub-Branch: Know_Who_To_Trust
= Know_Who_To_Trust
Good, maar keep jou circle klein. Te veel loyalty kan maak ‘n fool van jou.
-> AddEdu
-> END

// Sub-Branch: Not_Sure_Who_To_Trust
= Not_Sure_Who_To_Trust
Jy moet figure dit out quick. Die Flats gaan show jou who’s real and who’s fake.
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
