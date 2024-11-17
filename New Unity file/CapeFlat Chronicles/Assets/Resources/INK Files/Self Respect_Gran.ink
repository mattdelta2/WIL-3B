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
That’s exactly what you need to do. Self-respect is the foundation for everything else. If you’re serious, show me by choosing your path carefully. What matters most to you?

* I’ll focus on building myself and head to the Community Center.
    -> Community_Center

* I’ll explore the Gang Area and see where it leads.
    -> Gang_Area

// Sub-Branch: Community Center
= Community_Center
Seeking guidance shows real strength. Surrounding yourself with positivity will help you stay true to your values.
-> AddEdu
-> END

// Sub-Branch: Gang Area
= Gang_Area
Going your own way is brave, but it’s also risky. Loyalty to others can sometimes pull you away from yourself.
-> AddGang
-> END

// Branch: Go_With_Flow
= Go_With_Flow
No choice? There’s always a choice. Going with the flow might seem easier, but it can lead you to places you don’t want to be. Are you sure that’s what you want?

* It’s just easier. I don’t want to fight every battle.
    -> Easier_Path

* I don’t want trouble, so I just go along with things.
    -> Avoid_Trouble

// Sub-Branch: Easier Path
= Easier_Path
Easier doesn’t mean better. Some battles are worth fighting, especially when it’s about your own self-respect.

* Maybe I should stand up for myself more.
    -> Stand_Up_More

* It’s not worth the effort, Gran.
    -> Not_Worth_Effort

// Follow-up: Stand Up More
= Stand_Up_More
It’s good to be mindful of where you stand. Don’t let others push you around.
-> END

// Follow-up: Not Worth Effort
= Not_Worth_Effort
But it’s worth everything when it comes to protecting who you are.
-> AddGang
-> END

// Sub-Branch: Avoid Trouble
= Avoid_Trouble
Avoiding trouble is smart, but you don’t need to compromise who you are. There’s a way to stay true to yourself without making enemies.

* I’ll try to be more assertive.
    -> Be_Assertive

* I’ll see if I can manage that.
    -> Manage_That

// Follow-up: Be Assertive
= Be_Assertive
Good. Assertiveness is a sign of strength.
-> AddEdu
-> END

// Follow-up: Manage That
= Manage_That
It’s worth trying. It will help you grow.
-> END

// Branch: Hard To Stand Firm
= Hard_To_Stand_Firm
I know it’s hard. Life can feel like it’s crumbling sometimes, but that’s when you need your inner strength the most. How will you find it?

* I’ll visit the Community Center to get grounded.
    -> Community_Center

* I’ll check out the Gang Area instead.
    -> Gang_Area

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat, 0) // Ensures GangStat doesn’t drop below 0
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat, 0) // Ensures EduStat doesn’t drop below 0
-> END
