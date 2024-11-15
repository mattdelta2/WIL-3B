INCLUDE Global.ink

// Dialogue 4: Advice on Friends
I’ve seen you with some new faces lately. Be careful about who you surround yourself with. Good people will lift you up, but the wrong ones will drag you down. Tell me, what are these new friends like?

* They’re just like me. They understand what I’m going through.
    -> Understand_Me

* They’ve got my back, Gran. I trust them.
    -> Trust_Them

* I don’t know, Gran. I’m not sure if they’re good for me.
    -> Not_Sure_About_Friends

// Branch: Understand_Me
= Understand_Me
That might be true, but are they lifting you up, or are they keeping you where you are? It’s important to have people around who challenge you to be better.

* They push me to try harder.
    
    -> Try_Harder

* They’re just helping me survive.
    -> Just_Surviving

// Quest Triggered: Influence Quest
= Try_Harder
That’s good. As long as they’re pushing you forward, they might be the right friends. Why don’t you try to find more positive influences at the Community Center?
-> Start_Influence_Quest_Community

// Sub-Branch: Just_Surviving
= Just_Surviving
Survival’s important, but it’s not enough. You need to thrive. Don’t settle for just getting by.
-> END

// Branch: Trust_Them
= Trust_Them
Trust is important, but loyalty can be dangerous if it’s blind. Have they earned your trust, or are you giving it too easily?

* I trust them because I don’t have anyone else.
   
    -> No_One_Else

* I think they’ve earned it, but I’ll be careful.
    -> Be_Careful

// Quest Triggered: Influence Quest
= No_One_Else
That’s the problem. You should never trust someone just because you feel alone. Sometimes being on your own is safer. If you’re loyal to them, maybe you should go to the gang area to see what they’re about.
-> Start_Influence_Quest_Gang

// Sub-Branch: Be_Careful
= Be_Careful
Being careful is good. Just don’t let loyalty blind you to their faults.
-> END

// Branch: Not_Sure_About_Friends
= Not_Sure_About_Friends
If you’re questioning it, that’s already a sign you’re not sure. Sometimes, deep down, we know when people aren’t right for us. What are you worried about?

* I think they might be pulling me in the wrong direction.
    
    -> Wrong_Direction

* I don’t know if I’m ready to walk away from them yet.
    -> Not_Ready_To_Walk_Away

// Quest Triggered: Influence Quest
= Wrong_Direction
Listen to that feeling. You know what’s right. Don’t ignore your instincts. Why don’t you visit the Community Center and see if there’s a better path for you?
-> Start_Influence_Quest_Community

// Sub-Branch: Not_Ready_To_Walk_Away
= Not_Ready_To_Walk_Away
It’s hard to walk away from people, especially when you feel connected to them. But sometimes, it’s the best choice for your future.
-> END

// Quest Options for Influence Quest
= Start_Influence_Quest_Community
Go to the Community Center to find better influences.
-> END

= Start_Influence_Quest_Gang
Head to the gang area to stay loyal to your friends.
-> END

// Completion of Influence Quest
*  Go to the Community Center.
    -> Influence_Quest_Complete_Edu

*  Go to the Gang Area.
    -> Influence_Quest_Complete_Gang

= Influence_Quest_Complete_Edu
You made a choice to seek positive influences. It’s hard, but this step could change everything.
~ EduStat += 1

-> END

= Influence_Quest_Complete_Gang
You’ve chosen loyalty over change. Just remember, every decision has consequences.
~ GangStat += 1

-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat, 0) // Ensures GangStat doesn't drop below 0
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat, 0) // Ensures EduStat doesn't drop below 0
-> END
