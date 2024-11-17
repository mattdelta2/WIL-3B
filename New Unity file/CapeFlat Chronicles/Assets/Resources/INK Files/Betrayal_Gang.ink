INCLUDE Global.ink

// Dialogue 18: Betrayal
Jy weet mos, betrayal is 'n killer hier. Jy moet never betray, maar jy moet ook watch vir die knife in die back. Wat’s jou view on betrayal?

* I’d never betray the people who are loyal to me.
    -> Never_Betray_Loyal

* I’ll betray if it means getting ahead.
    -> Betray_To_Get_Ahead

* I don’t trust anyone enough to be betrayed.
    -> Dont_Trust_Enough

// Branch: Never_Betray_Loyal
= Never_Betray_Loyal
Good, bru, maar onthou, trust moet wees earned, nie given nie.

* I know who’s worth my loyalty.
    -> Worth_Loyalty

* I haven’t thought much about betrayal.
    -> Havent_Thought_About_Betrayal

// Sub-Branch: Worth_Loyalty
= Worth_Loyalty
Good, keep jou circle small, die rest gaan look to betray.
-> AddEdu
-> END

// Sub-Branch: Haven’t_Thought_About_Betrayal
= Havent_Thought_About_Betrayal
Jy gaan have to, bru. Die Flats gaan teach jou real quick who’s loyal.
-> END

// Branch: Betray_To_Get_Ahead
= Betray_To_Get_Ahead
Ja, maar onthou, die knife jy vat out gaan mos come back vir jou.

* I’ll take that chance.
    -> Take_Chance_With_Betrayal

// Sub-Branch: Take_Chance_With_Betrayal
= Take_Chance_With_Betrayal
Ons gaan sien, bru. Betrayal maak enemies vinnig.
-> AddGang
-> END

// Branch: Don’t_Trust_Enough
= Dont_Trust_Enough
Jy dink so, maar die right person gaan find jou trust. Jy moet stay wakker, bru.

* I’ll handle it.
    -> Handle_Trust

// Sub-Branch: Handle_Trust
= Handle_Trust
Just make sure jy handle dit before die knife come out.
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

