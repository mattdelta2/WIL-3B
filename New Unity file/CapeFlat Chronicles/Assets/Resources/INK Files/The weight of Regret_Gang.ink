INCLUDE Global.ink

// Dialogue 29: The Weight of Regret
Jy weet mos, bru, regret is ‘n heavy thing. Some mense live hulle hele life met regret. Wat dink jy van daai?

* I try to live without regrets by thinking through my choices.
    -> No_Regrets_Choices

* I don’t care about regrets. I’ll deal with them later.
    -> Dont_Care_Regrets

* I’ve already got regrets, but I’m moving on.
    -> Moving_On_Regrets

// Branch: No_Regrets_Choices
= No_Regrets_Choices
Aweh, daai’s die way to go, maar onthou, soms kan die wrong choice still creep up on jou.

* I’ll make sure I make the right choices.
    -> Right_Choices

* I haven’t figured out how to avoid regret.
    -> Havent_Figured_Avoid_Regret

// Sub-Branch: Right_Choices
= Right_Choices
Good, bru, maar jy moet stay alert. Die Flats maak plans without jou input.
-> AddEdu
-> END

// Sub-Branch: Haven’t_Figured_Avoid_Regret
= Havent_Figured_Avoid_Regret
Jy gaan have to, bru. Regret kan maak ‘n big mess van jou life.
-> END

// Branch: Don’t_Care_Regrets
= Dont_Care_Regrets
Jy dink so, maar later kom vinniger as wat jy dink. Die Flats gaan nie wait nie.

* I’ll deal with them when they come.
    -> Deal_With_Regrets

// Sub-Branch: Deal_With_Regrets
= Deal_With_Regrets
Ons gaan sien, maar regret maak ‘n person weak, bru.
-> AddGang
-> END

// Branch: Moving_On_Regrets
= Moving_On_Regrets
Daai’s fair, maar jy moet onthou die past gaan mos nie stay buried nie. Jy gaan kry daai regret later.

* I’ll handle it when it comes up.
    -> Handle_When_Comes

// Sub-Branch: Handle_When_Comes
= Handle_When_Comes
Just maak sure jy ready, bru.
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
