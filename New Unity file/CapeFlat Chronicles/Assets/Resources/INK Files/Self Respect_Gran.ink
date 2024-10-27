INCLUDE Global.ink

// Dialogue 7: Self-Respect
People will try to pull you in all directions. It’s easy to lose yourself in the chaos. But if you don’t respect yourself, no one else will. You need to stand firm in who you are. What do you think about that?

* I’m going to respect myself and do what’s right.
    -> Do_Whats_Right

* I’ve got no choice but to go with the flow.
    -> Go_With_Flow

* It’s hard to stand firm when everything around me is falling apart.
    -> Hard_To_Stand_Firm

// Branch: Do_Whats_Right
= Do_Whats_Right
That’s exactly what you need to do. Self-respect is the foundation for everything else. What does respecting yourself mean to you?

* It means not letting others take advantage of me or pull me into things I don’t want to do.
    -> Know_Worth

* I’m not sure yet. I just know I need to be true to myself.
    -> True_To_Self

// Sub-Branch: Know_Worth
= Know_Worth
Good. You know your worth, and you need to protect it. Don’t let anyone drag you down.
-> AddEdu
-> END

// Sub-Branch: True_To_Self
= True_To_Self
That’s a good start. You’ll figure it out as you go, but always keep that in mind. Your values should guide your actions.

* I’ll do my best.
    -> Do_My_Best

* It’s hard sometimes, though.
    -> Hard_Sometimes

// Follow-up: Do_My_Best
= Do_My_Best
Good. That’s all anyone can ask.
-> AddEdu
-> END

// Follow-up: Hard_Sometimes
= Hard_Sometimes
It is, but staying true to yourself will always be worth it.
-> END

// Branch: Go_With_Flow
= Go_With_Flow
No choice? There’s always a choice. Going with the flow might seem easier, but it can lead you to places you don’t want to be. Are you sure that’s what you want?

* It’s just easier. I don’t want to fight every battle.
    -> Easier_Path

* I don’t want trouble, so I just go along with things.
    -> Avoid_Trouble

// Sub-Branch: Easier_Path
= Easier_Path
Easier doesn’t mean better. Some battles are worth fighting, especially when it’s about your own self-respect.

* Maybe I should stand up for myself more.
    -> Stand_Up_More

* It’s not worth the effort, Gran.
    -> Not_Worth_Effort

// Follow-up: Stand_Up_More
= Stand_Up_More
It’s good to be mindful of where you stand. Don’t let others push you around.
-> END

// Follow-up: Not_Worth_Effort
= Not_Worth_Effort
But it’s worth everything when it comes to protecting who you are.
-> AddGang
-> END

// Sub-Branch: Avoid_Trouble
= Avoid_Trouble
Avoiding trouble is smart, but you don’t need to compromise who you are. There’s a way to stay true to yourself without making enemies.

* I’ll try to be more assertive.
    -> Be_Assertive

* I’ll see if I can manage that.
    -> Manage_That

// Follow-up: Be_Assertive
= Be_Assertive
Good. Assertiveness is a sign of strength.
-> AddEdu
-> END

// Follow-up: Manage_That
= Manage_That
It’s worth trying. It will help you grow.
-> END

// Branch: Hard_To_Stand_Firm
= Hard_To_Stand_Firm
I know it’s hard. Life can feel like it’s crumbling sometimes, but that’s when you need your inner strength the most. How are you holding up?

* I’m barely managing, but I’m trying.
    -> Barely_Managing

* I feel like I’m losing myself.
    -> Losing_Self

// Sub-Branch: Barely_Managing
= Barely_Managing
Trying is good. It’s all anyone can ask of you. But don’t lose sight of who you are in the struggle.

* I’ll keep going.
    -> Keep_Going

* I’m not sure how long I can hold on.
    -> Hold_On

// Follow-up: Keep_Going
= Keep_Going
That’s the spirit. Keep moving forward.
-> AddEdu
-> END

// Follow-up: Hold_On
= Hold_On
Take things one day at a time. You’re stronger than you think.
-> END

// Sub-Branch: Losing_Self
= Losing_Self
You haven’t lost yourself yet, but if you keep letting others dictate your path, you will. Take back control, while you still can.

* I’ll think about what you said.
    -> Think_About_It

* It’s too late for that, Gran.
    -> Too_Late

// Follow-up: Think_About_It
= Think_About_It
Just remember, every day is a new chance to make different choices.
-> END

// Follow-up: Too_Late
= Too_Late
It’s never too late to start respecting yourself. Don’t give up.
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
