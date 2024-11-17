INCLUDE Global.ink

// Dialogue 11: Respecting the Streets
Die streets, bru, hulle gaan respect van niemand nie. Jy moet maak hulle respect jou. Hoe gaan jy daai kry?

* I’ll earn respect by making smart choices.
    -> Earn_Respect_Smart_Choices

* I’ll take respect by force if I have to.
    -> Take_Respect_By_Force

* I don’t think I need respect from the streets.
    -> Dont_Need_Respect_From_Streets

// Branch: Earn_Respect_Smart_Choices
= Earn_Respect_Smart_Choices
Aweh, dis ‘n strong move, maar die streets gaan test jou.

"Here’s a test for jou, bru: Imagine jy have to choose between helping someone or ignoring them to protect yourself. What’s jou choice?"

* I’d help them and earn respect through my actions.
    -> AddEdu
     "That’s respect, bru. Helping others kan show die streets jy het die guts to do what’s right."
    -> RespectStreets_TaskComplete

* I’d ignore them and focus on my own survival.
    -> AddGang
     "A true survivor’s move, bru. Die streets gaan respect jou for looking out for number one."
    -> RespectStreets_TaskComplete

= RespectStreets_TaskComplete
 "Respect is nie net ‘n word nie, bru. It’s earned through every choice jy maak."
-> END

// Branch: Take_Respect_By_Force
= Take_Respect_By_Force
Ja, maar onthou, force gaan bring force back. Jy moet watch jou back.

* I’m not scared of what comes.
    -> Not_Scared_Of_What_Comes

// Sub-Branch: Not_Scared_Of_What_Comes
= Not_Scared_Of_What_Comes
Jy praat groot, maar ons gaan sien if jy klaar gaan wees or nie.
-> AddGang
-> END

// Branch: Don’t_Need_Respect_From_Streets
= Dont_Need_Respect_From_Streets
Jy’s mos mal, bru. Die streets gaan maak ‘n example of jou if jy think so.

* I’ll deal with it when it comes.
    -> Deal_With_It_When_Comes

// Sub-Branch: Deal_With_It_When_Comes
= Deal_With_It_When_Comes
Daai thinking gaan make jou klaar.
-> AddGang
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

