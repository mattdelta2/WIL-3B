INCLUDE Global.ink

// Dialogue 13: Seeking Help
Asking for help is a sign of strength. Do you find it easy to seek help when you need it?

* I try to ask for help when I need it.
    -> Ask_For_Help

* I hesitate to ask for help sometimes.
    -> Hesitate_Help

* I never ask for help.
    -> Never_Ask

// Branch: Ask_For_Help
= Ask_For_Help
That’s a smart move! Seeking support can make challenges more manageable.

* I’ve learned it’s okay to ask for help.
    -> Ok_To_Ask

// Sub-Branch: Ok_To_Ask
= Ok_To_Ask
Absolutely! Everyone needs assistance at some point.
-> AddEdu
-> END

// Branch: Hesitate_Help
= Hesitate_Help
That’s understandable. It’s important to remember that reaching out shows maturity.
-> END

// Branch: Never_Ask
= Never_Ask
You don’t have to face everything alone. Consider opening up to someone you trust.
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
