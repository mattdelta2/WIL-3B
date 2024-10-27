INCLUDE Global.ink

// Dialogue 13: Taking Risks
On die Flats, jy moet neem risks, but jy moet know when to pull back. Wat’s jou style, bru? Jy risk alles?

* I take calculated risks. No need to be reckless.
    -> Calculated_Risks

* I risk everything. I go all in.
    -> Risk_Everything

* I don’t know how to deal with risks yet.
    -> Dont_Know_How_To_Deal_With_Risks

// Branch: Calculated_Risks
= Calculated_Risks
Aweh, daai’s ‘n smart move. Reckless gaan mos maak jy klaar vinnig.

* I don’t take risks unless I know it’s worth it.
    -> Dont_Take_Unless_Worth

* I’m still learning when to take risks.
    -> Learning_When_To_Take_Risks

// Sub-Branch: Don’t_Take_Unless_Worth
= Dont_Take_Unless_Worth
Good thinking, bru. Keep daai mindset.
-> AddEdu
-> END

// Sub-Branch: Learning_When_To_Take_Risks
= Learning_When_To_Take_Risks
Jy moet learn fast. Die Flats gaan maak jy choose quick.
-> END

// Branch: Risk_Everything
= Risk_Everything
Ja, maar onthou, jy gaan lose alles if jy nie careful is nie.

* I’m ready to lose if I have to.
    -> Ready_To_Lose

// Sub-Branch: Ready_To_Lose
= Ready_To_Lose
Ons gaan sien, maar die Flats gaan maak sure jy pay die price.
-> AddGang
-> END

// Branch: Don’t_Know_How_To_Deal_With_Risks
= Dont_Know_How_To_Deal_With_Risks
Jy moet learn fast, bru. Risks gaan kom vir jou, jy moet choose wisely.

* I’ll figure it out.
    -> Figure_It_Out_Risks

// Sub-Branch: Figure_It_Out_Risks
= Figure_It_Out_Risks
Just don’t let die Flats maak daai choice for you.
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
