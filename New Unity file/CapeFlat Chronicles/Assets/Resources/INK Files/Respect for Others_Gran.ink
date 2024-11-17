INCLUDE Global.ink
// Dialogue 15: Respect for Others
Respect is one of the most important things you can give to others, my child. It’s not always about agreeing, but treating people with dignity. How do you show respect to others?

* I listen to what they have to say, even if I don’t agree.
    -> Listen_To_Others

* I try to treat others well, but it’s not always easy.
    -> Treating_Others_Well

* Some people don’t deserve respect, Gran.
    -> Dont_Deserve_Respect

// Branch: Listen_To_Others
= Listen_To_Others
That’s good. Listening shows you value others, even when you disagree. Do you find it easy to listen, even when someone upsets you?

* Not always, but I try to stay calm and hear them out.
    -> Stay_Calm

* It’s hard when I feel like they’re being disrespectful to me.
    -> Hard_When_Disrespected

= Stay_Calm
That’s the right attitude. Staying calm and respectful will take you far in life.
-> AddEdu
-> END

= Hard_When_Disrespected
Respect goes both ways, my child, but sometimes you have to give it even when it’s not returned. That shows true strength.
-> AddEdu
-> END

// Branch: Treating_Others_Well
= Treating_Others_Well
That’s all anyone can ask for, but respect isn’t always easy to give. What makes it hard for you?

* Some people take advantage of kindness, and that makes me hesitant.
    -> Hesitant_Kindness

* I feel like respect should be earned, not given freely.
    -> Respect_Should_Be_Earned

= Hesitant_Kindness
It’s true, some people will take advantage, but don’t let that stop you from being a good person. Respect reflects who you are, not who they are.
-> AddEdu
-> END

= Respect_Should_Be_Earned
Respect does need to be earned to some extent, but a basic level of kindness and dignity is something everyone deserves.
-> AddEdu
-> END

// Branch: Don’t_Deserve_Respect
= Dont_Deserve_Respect
It’s easy to feel that way when someone has wronged you, but holding on to anger only weighs you down. Why do you feel some people don’t deserve respect?

* They’ve hurt me or others I care about.
    -> Hurt_Me_Or_Others

* They act in ways that are wrong, so why should I respect them?
    -> Wrong_Actions

= Hurt_Me_Or_Others
I understand your pain, but forgiving and showing respect doesn’t mean you forget. It means you free yourself from their power over you.
-> AddEdu
-> END

= Wrong_Actions
You don’t have to agree with or approve of their actions to show respect. It’s about rising above and staying true to yourself.
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
