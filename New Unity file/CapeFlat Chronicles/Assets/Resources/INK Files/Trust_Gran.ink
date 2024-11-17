INCLUDE Global.ink

// Dialogue 19: Trust
Trust is a fragile thing, my child. It takes time to build but only a moment to break. How do you decide who to trust?

* I trust people who have proven they’re there for me.
    -> Trust_Proven

* I find it hard to trust anyone, Gran.
    -> Hard_To_Trust

* I trust easily, but sometimes I get hurt.
    -> Trust_Easily

// Branch: Trust Proven
= Trust_Proven
That’s wise. Trust should be earned, not given away freely. What do you value most in the people you trust?

* Honesty. If someone is honest, I feel I can rely on them.
    -> Value_Honesty

* Loyalty. I trust people who stand by me no matter what.
    -> Value_Loyalty

= Value_Honesty
Honesty is a strong foundation for trust. Without it, relationships crumble. Always be truthful, my child.
-> AddEdu
-> END

= Value_Loyalty
Loyalty is important, but make sure the people you trust deserve it. Blind loyalty can lead you astray.
-> AddEdu
-> END

// Branch: Hard To Trust
= Hard_To_Trust
I understand. It’s hard to open up when you’ve been hurt. But holding back can make you feel lonely. What’s made it so difficult for you to trust?

* I’ve been let down too many times.
    -> Let_Down

* I’m afraid of being betrayed.
    -> Afraid_Of_Betrayal

= Let_Down
It’s painful to be let down, but don’t let past hurts stop you from building new connections. Not everyone will disappoint you.
-> AddEdu
-> END

= Afraid_Of_Betrayal
Fear of betrayal can keep you isolated. Trusting again is hard, but it’s worth it when you find the right people.
-> AddEdu
-> END

// Branch: Trust Easily
= Trust_Easily
It’s good to trust, but not everyone deserves it. Have you thought about how you can protect yourself while staying open?

* I could take more time to get to know people before trusting them.
    -> Take_Time

* I don’t think I’ll ever change. Trusting is just who I am.
    -> Wont_Change

= Take_Time
That’s a good plan. Trusting slowly allows you to see who people really are before letting them in.
-> AddEdu
-> END

= Wont_Change
It’s okay to be trusting, but remember to guard your heart. Not everyone has your best interests at heart.
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
