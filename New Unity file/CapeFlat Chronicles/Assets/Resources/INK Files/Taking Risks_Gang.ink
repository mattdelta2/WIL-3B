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

"Let’s put that to the test: imagine jy have to retrieve something valuable while dodging trouble. What would jy do?"

* I’d plan my route carefully and go when it’s quiet.
    -> AddEdu
     "Slim move, bru. Daai strategy gaan jou mos uit die moeilikheid hou."
    -> Risk_Task_Complete

* I’d go straight for it. No time for overthinking.
    -> AddGang
     "Bold move, maar onthou jy can’t always charge in. Timing is alles."
    -> Risk_Task_Complete

= Risk_Task_Complete
 "Respect, bru. Whether jy go careful or bold, jy moet always be ready for die consequences."
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
