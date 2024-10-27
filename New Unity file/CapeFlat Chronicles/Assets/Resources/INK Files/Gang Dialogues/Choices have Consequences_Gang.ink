INCLUDE Global.ink

// Dialogue 5: Choices Have Consequences
Every choice jy maak hier kom met consequences, bru. Jy weet dit mos. How you making jou choices?

* I try to think through my decisions carefully.
    -> Think_Carefully

* I don’t care about the consequences.
    -> Dont_Care_Consequences

* I’m still figuring out how to make the right choices.
    -> Figuring_Out_Choices

// Branch: Think_Carefully
= Think_Carefully
Slim plan. Maar sometimes die wrong choice kom quick. Jy moet stay wakker.

* I’m staying focused.
    -> Staying_Focused

* I make decisions in the moment. I deal with the consequences later.
    -> Deal_With_Consequences_Later

// Sub-Branch: Staying_Focused
= Staying_Focused
Aweh. Keep daai focus, anders jy gaan regret jou choices.
-> AddEdu
-> END

// Sub-Branch: Deal_With_Consequences_Later
= Deal_With_Consequences_Later
Daai’s risky, bru. On die streets, die moment kan maak of breek jou.
-> END

// Branch: Don’t_Care_Consequences
= Dont_Care_Consequences
Jy gaan care when die streets kom for jou. Jy maak ‘n plan nou, of jy gaan regret it.

* I’ll take whatever comes.
    -> Take_Whatever_Comes

// Sub-Branch: Take_Whatever_Comes
= Take_Whatever_Comes
Aweh, ons gaan sien. Die game gaan jou test.
-> AddGang
-> END

// Branch: Figuring_Out_Choices
= Figuring_Out_Choices
Daai’s fair, maar jy gaan learn quick. The streets gaan teach jou, maar jy gaan nie like die lessons nie.

* I’ll try to learn.
    -> Try_To_Learn

// Sub-Branch: Try_To_Learn
= Try_To_Learn
Just make sure jy maak the right moves. Otherwise, die Flats gaan klaar maak met jou.
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
