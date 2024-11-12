INCLUDE Global.ink

// Dialogue 26: Rising Above
Jy dink jy kan rise above die Flats, bru? Hier maak die life jou or breek jou. Wat gaan jy doen om bo te kom?

* I’m going to rise above it all. I have a plan.
    -> Rise_With_Plan

* I’ll rise above by any means necessary.
    -> Any_Means_Necessary

* I don’t think I can rise above this place.
    -> Doubt_Rise_Above

// Branch: Rise_With_Plan
= Rise_With_Plan
Aweh, ek hoor jou. Maar die Flats gaan nie make dit easy nie, bru.

 "Here’s a test of jou plan: Imagine jy’re faced with ‘n quick choice—stay loyal or take a shortcut that could risk jou reputation. What’s jou move?"

* I’d stay loyal, even if it takes longer.
    -> AddEdu
     "Respect, bru. Daai kind loyalty gaan jou ver bring, maar hou jou plan strong."
    -> Rise_Above_Challenge_Complete

* I’d take the shortcut, as long as it gets me out.
    -> AddGang
     "Jy’s mos bold, maar onthou, shortcuts kom met risk. Die Flats onthou jou choices."
    -> Rise_Above_Challenge_Complete

= Rise_Above_Challenge_Complete
 "Die Flats is hard, maar jou plan gaan jou dra if jy bly committed. Jy gaan die consequences face one day."
-> END

// Branch: Any_Means_Necessary
= Any_Means_Necessary
Ja, maar onthou, die wrong means gaan maak die streets turn on jou.

* I’ll do whatever it takes.
    -> Do_Whatever_It_Takes

// Sub-Branch: Do_Whatever_It_Takes
= Do_Whatever_It_Takes
Ons gaan sien, bru. Die Flats gaan maak sure jy pay die price.
-> AddGang
-> END

// Branch: Doubt_Rise_Above
= Doubt_Rise_Above
Daai’s dangerous thinking, bru. If jy nie dink jy kan rise nie, die Flats gaan klaar maak met jou.

* Maybe, but I’m trying.
    -> Trying_Harder

// Sub-Branch: Trying_Harder
= Trying_Harder
Jy moet try harder, bru. Die game is rough.
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
