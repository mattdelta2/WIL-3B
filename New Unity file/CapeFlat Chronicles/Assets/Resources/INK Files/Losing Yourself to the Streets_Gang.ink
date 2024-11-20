INCLUDE Global.ink

// Dialogue 30: Losing Yourself to the Streets
Hier op die Flats, bru, mense lose hulle self vinnig. Jy moet stay strong, anders die streets gaan swallow jou. Hoe gaan jy stay true to yourself?

* I’ll stick to my values, no matter what.
    -> Stick_To_Values

* I’m not sure how to stay true to myself yet.
    -> Not_Sure_True

* I’ll do whatever it takes to survive, even if I lose myself.
    -> Lose_Myself_Survive

// Branch: Stick To Values
= Stick_To_Values
Aweh, dis ‘n goeie mindset, maar die Flats gaan push jou limits, bru.

 "Let’s test daai values van jou: Imagine jy staan voor ‘n situation waar jy moet kies tussen jou morals en jou survival. Wat gaan jy kies?"

* I’d stick to my morals, no matter what.
    -> AddEdu
     "Goed, bru. Dis nie ‘n maklike path nie, maar die Flats gaan respect dit."
    -> Values_Challenge_Complete

* I’d bend the rules to survive.
    -> AddGang
     "Jy praat wys. Die Flats vereis flexibility, maar onthou die price wat jy betaal."
    -> Values_Challenge_Complete

= Values_Challenge_Complete
 "Die Flats gaan jou test, bru. Maar jy moet weet: wie jy is, is die enigste ding wat jy altyd het."
-> END

// Branch: Not Sure True
= Not_Sure_True
Jy moet vinnig uitfigure wie jy is. Die Flats gaan nie wag nie, bru. Take small steps to discover yourself.

* I’ll try to figure it out before it’s too late.
    -> Try_To_Discover

= Try_To_Discover
Good, bru. Maar onthou, die streets gaan test jou elke keer wat jy doubt.
-> END

// Branch: Lose Myself Survive
= Lose_Myself_Survive
Dis ‘n dangerous path, bru. Die price van losing yourself is hoër as wat jy dink.

* I’ll take the risks. Survival is all that matters.
    -> AddGang
     "Fair enough, bru. Maar die Flats gaan maak sure jy feel daai sacrifices."
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
