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

 "Here’s a test for jou thinking: If jy had to choose between letting go or holding onto something painful, wat gaan jy choose?"

* I’d let it go. Holding onto regret will just weigh me down.
    -> AddEdu
     "Goed, bru. Knowing when to let go is ‘n skill op itself."
    -> Regret_Test_Complete

* I’d hold onto it to remind myself not to repeat mistakes.
    -> AddGang
     "Interesting choice, bru. Maar onthou, regret kan ook ‘n chain wees."
    -> Regret_Test_Complete

= Regret_Test_Complete
 "On die Flats, regret kom vinnig. Make sure jy kan live met jou choices."

-> Face_The_Past_Quest

// Quest: Face the Past
= Face_The_Past_Quest
 "Here’s ‘n challenge: Think back to one thing jy regret the most, and imagine what jy would do differently. Wat gaan jy choose?" 

* I’d confront it head-on, making sure I wouldn’t repeat it.
    -> AddEdu
    "Aweh, daai’s die way to face it. Soms facing jou past make jou stronger."
    -> Quest_Complete

* I’d avoid it altogether. The past is better left alone.
    -> AddGang
    "Interesting choice, bru. Maar onthou, the past kan sometimes find jou."
    -> Quest_Complete

= Quest_Complete
 "Op die Flats, jy gaan kry reminders of jou past choices. Make sure jy know hoe to live met jou decisions."
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
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END

