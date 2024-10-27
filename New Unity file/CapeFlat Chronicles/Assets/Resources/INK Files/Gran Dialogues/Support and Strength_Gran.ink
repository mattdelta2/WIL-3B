INCLUDE Global.ink

// Dialogue 8: Support and Strength
You’ve got a family that loves you, and we’ll support you no matter what. You don’t have to face everything alone, my child. But sometimes I see you trying to carry the weight of the world on your shoulders. What’s going on in that head of yours?

* I know, Gran. You’ve always been there for me. I’m grateful.
    -> Grateful

* I’m on my own, Gran. I can handle it.
    -> On_My_Own

* I appreciate the support, but sometimes I just feel lost.
    -> Feeling_Lost

// Branch: Grateful
= Grateful
I’ll always be here for you. But you need to remember that support is a two-way street. Don’t push us away when things get tough. How are you handling things lately?

* I’m doing okay. Just trying to stay focused on what I need to do.
    -> Staying_Focused

* I’m struggling, but I’m managing.
    -> Struggling_Managing

// Sub-Branch: Staying_Focused
= Staying_Focused
That’s good. Focus will keep you grounded. But don’t forget to lean on your family when things get hard.
-> AddEdu
-> END

// Sub-Branch: Struggling_Managing
= Struggling_Managing
It’s okay to struggle. But don’t let pride stop you from asking for help when you need it.

* I’ll ask for help if it gets too much.
    -> Ask_For_Help

* I’ll try to handle it on my own for now.
    -> Handle_Alone

// Follow-up: Ask_For_Help
= Ask_For_Help
Good. Asking for help is a strength, not a weakness.
-> AddEdu
-> END

// Follow-up: Handle_Alone
= Handle_Alone
Sometimes you need to rely on others, even if it’s hard.
-> END

// Branch: On_My_Own
= On_My_Own
On your own? You’re never truly alone, not with family behind you. But if you keep thinking that way, you’ll end up isolated. Why do you feel like you have to do it all yourself?

* I don’t want to be a burden to anyone.
    -> Dont_Be_A_Burden

* I don’t need anyone else’s help. I can take care of myself.
    -> Dont_Need_Help

// Sub-Branch: Don’t_Be_A_Burden
= Dont_Be_A_Burden
You’re never a burden. That’s what family’s for, to help lift you up when you’re down. Don’t close yourself off from us.

* I’ll try to be more open.
    -> Be_More_Open

* I’ll think about it.
    -> Think_About_It

// Follow-up: Be_More_Open
= Be_More_Open
Good. It’s important to share the load when things get tough.
-> AddEdu
-> END

// Follow-up: Think_About_It
= Think_About_It
That’s all I ask. Just consider letting us in.
-> END

// Sub-Branch: Don’t_Need_Help
= Dont_Need_Help
That kind of thinking will lead you down a lonely path. Don’t let pride get in the way of accepting help when you need it.

* Maybe you’re right. I’ll think about it.
    -> Maybe_Right

* I don’t need anyone’s help, Gran.
    -> No_Help_Needed

// Follow-up: Maybe_Right
= Maybe_Right
Just remember, it’s okay to lean on others from time to time.
-> END

// Follow-up: No_Help_Needed
= No_Help_Needed
Carrying everything alone will wear you down. Don’t be afraid to reach out.
-> AddGang
-> END

// Branch: Feeling_Lost
= Feeling_Lost
It’s okay to feel lost sometimes. We all do. But that’s when you need to rely on your family and your strength the most. What’s making you feel this way?

* I don’t know. It just feels like too much sometimes.
    -> Feels_Too_Much

* I feel like nothing I do is good enough.
    -> Not_Good_Enough

// Sub-Branch: Feels_Too_Much
= Feels_Too_Much
It’s okay to not have all the answers. But don’t let that feeling overwhelm you. You’ve got a support system, use it.

* I’ll try to lean on you more, Gran.
    -> Lean_On_Gran

* I’ll handle it the best I can.
    -> Handle_Best_Can

// Follow-up: Lean_On_Gran
= Lean_On_Gran
Good. You’re not alone, remember that.
-> AddEdu
-> END

// Follow-up: Handle_Best_Can
= Handle_Best_Can
That’s all you can do, but don’t be afraid to ask for support when needed.
-> END

// Sub-Branch: Not_Good_Enough
= Not_Good_Enough
Don’t ever think that. You’re good enough, more than good enough. But if you keep carrying that weight alone, it’ll crush you. Let us help.

* Maybe I’ll start leaning on you more.
    -> Start_Leaning

* I don’t think anyone can help me now.
    -> No_Help_Needed_Now

// Follow-up: Start_Leaning
= Start_Leaning
Good. Let us share the load.
-> END

// Follow-up: No_Help_Needed_Now
= No_Help_Needed_Now
Don’t close yourself off, no matter how hard things get.
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
