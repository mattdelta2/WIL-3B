INCLUDE Global.ink

// Dialogue 1: Morning Motivation
You’re heading out early, hey? What’s on your mind, my child? School? The streets? You need to focus and make the right choices. I know life out there isn’t easy, but you have to remember that every decision you make counts.

* Yeah, I’m going to school, Gran. I’m trying to focus.
    -> School_Focus

* The streets are calling, Gran. I’ll be back later.
    -> Streets_Calling

// Branch: School_Focus
= School_Focus
That’s good. You’ve always been a smart one. I’ve seen you put your head down and work, but sometimes life throws distractions in your way. What do you do when things get tough at school?

* I push through. I’m not letting anything stop me from learning.
    -> Push_Through

* I don’t know, Gran. Sometimes it feels like too much.
    -> Feels_Like_Too_Much

// Sub-Branch: Push_Through
= Push_Through
That’s what I love to hear. School’s hard, but it’s your way out of here, your way to a better life. I didn’t have the same opportunities you do now, but I know you’re going to make something of yourself. Keep your eyes on your future.
-> AddEdu
-> END

// Sub-Branch: Feels_Like_Too_Much
= Feels_Like_Too_Much
It’s okay to feel that way. We all do. The important thing is that you don’t let that feeling stop you. What do you think you need to help you stay on track?

* Maybe a tutor or extra help.
    -> Tutor_Help

* I think I just need to get my head clear.
    -> Head_Clear

// Sub-Branch: Tutor_Help
= Tutor_Help
Just remember, you’re not alone in this. I’m here for you. Even when things get tough, I’m here to support you.
-> AddEdu
-> END

// Sub-Branch: Head_Clear
= Head_Clear
Just remember, you’re not alone in this. I’m here for you. Even when things get tough, I’m here to support you.
-> END

// Branch: Streets_Calling
= Streets_Calling
You think the streets care about you? The streets only take. I know you think you’ve got it figured out, but you’re playing a dangerous game. What do you think is out there for you?

* I’ve got to make my own way, Gran. No one’s handing me anything.
    -> Make_Own_Way

// Sub-Branch: Make_Own_Way
= Make_Own_Way
Your own way? I understand that, but you need to think about the long term. The streets will swallow you whole if you’re not careful. Do you think they care about your future?

* I can handle it, Gran. I’ve been through worse.
    -> Can_Handle

* Maybe you’re right, but it feels like the only option sometimes.
    -> Feels_Only_Option

// Sub-Branch: Can_Handle
= Can_Handle
The streets can seem like a quick way, but they come with their own costs. You’re worth more than what they offer.
-> AddGang
-> END

// Sub-Branch: Feels_Only_Option
= Feels_Only_Option
I get that. The world can feel like it’s closing in on you. But you’ve got to know that there are other ways, even if they’re harder to see.

* I’m just trying to survive, Gran.
    -> Just_Survive

// Sub-Branch: Just_Survive
= Just_Survive
Survival is one thing, but you need to think beyond just surviving. You’ve got more potential than that. What do you want for yourself, really?

* I want a better life, I just don’t know how to get there.
    -> Better_Life

* I don’t know. I’m just taking it one day at a time.
    -> One_Day_At_A_Time

* I’m not sure yet, Gran. I’ll figure it out along the way.
    -> Figure_Out_Along

// Sub-Branch: Figure_Out_Along
= Figure_Out_Along
You say that, but every day you don’t make a choice, the world makes one for you. You can’t afford to drift, my child. What’s stopping you from making a decision now?

* I’m scared of making the wrong choice.
    -> Scared_Of_Failure

* I don’t want to feel trapped by one path.
    -> Trapped_By_Path

-> END

= Better_Life
I’m glad to hear that. You don’t need to have it all figured out, but having a goal can help guide your choices.
-> AddEdu
-> END

// Sub-Branch: One_Day_At_A_Time
= One_Day_At_A_Time
You say that, but every day you don’t make a choice, the world makes one for you. You can’t afford to drift, my child. What’s stopping you from making a decision now?

* I’m scared of making the wrong choice.
    -> Scared_Of_Failure

// Sub-Branch: Scared_Of_Failure
= Scared_Of_Failure
That’s understandable. Everyone’s afraid of failure. But making no decision is the same as making the wrong one. You need to face that fear.

* I guess you’re right. I’ll think about it.
    -> Think_About_It

* I don’t want to feel trapped by one path.
    -> Trapped_By_Path

// Sub-Branch: Think_About_It
= Think_About_It
I’m glad you’re open to it. Life is about making choices, even the hard ones.
-> AddEdu
-> END

// Sub-Branch: Trapped_By_Path
= Trapped_By_Path
I get that. But sometimes committing to a path, even if it feels limiting, is what gives you freedom later. You have to sacrifice some things to gain others.
-> AddGang
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
