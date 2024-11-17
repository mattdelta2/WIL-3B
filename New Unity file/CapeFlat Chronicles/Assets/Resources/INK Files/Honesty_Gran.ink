INCLUDE Global.ink

// Dialogue 10: Honesty
If you’ve made mistakes, own up to them. No one’s perfect, but running from your mistakes will only make things worse. You’ve got to be honest with yourself, my child. Are you being truthful?

* You’re right, Gran. I’ll be honest and try to do better.
    -> Be_Honest

* Mistakes are just part of the game, Gran. It’s no big deal.
    -> Mistakes_Part_Of_Game

* I’m trying, but it’s hard to always be honest, especially with myself.
    -> Hard_To_Be_Honest

// Branch: Be_Honest
= Be_Honest
That’s the best you can do, and it’s enough. Everyone makes mistakes, but what you do after matters. What’s something you’ve been struggling to be honest about?

* I haven’t been focused on school, and I need to change that.
    -> Need_To_Focus

* I’ve been making bad decisions, but I want to turn things around.
    -> Turn_Things_Around

// Sub-Branch: Need_To_Focus
= Need_To_Focus
It’s never too late to change, but don’t wait too long. The more you drift, the harder it is to come back.
-> AddEdu
-> Reflect_On_Honesty

// Sub-Branch: Turn_Things_Around
= Turn_Things_Around
That’s a big step, admitting that. The road to change is hard, but it’s worth walking.

* I’ll start making better choices.
    -> Better_Choices

* I’m not sure how, but I’ll try.
    -> Not_Sure_How

// Follow-up: Better_Choices
= Better_Choices
Good. Change starts with one choice at a time.
-> AddEdu
-> Reflect_On_Honesty

// Follow-up: Not_Sure_How
= Not_Sure_How
It’s okay to take things slowly. The important part is that you’re trying.
-> Reflect_On_Honesty

// Branch: Mistakes_Part_Of_Game
= Mistakes_Part_Of_Game
It might not seem like a big deal now, but mistakes pile up if you don’t learn from them. Are you learning from yours?

* Not really. I just move on to the next thing.
    -> Move_On

* Maybe, but I try not to dwell on them.
    -> Not_Dwell

// Sub-Branch: Move_On
= Move_On
That’s dangerous thinking. Mistakes should be lessons. If you keep ignoring them, one day they’ll catch up with you.
-> AddGang
-> Reflect_On_Honesty

// Sub-Branch: Not_Dwell
= Not_Dwell
There’s a balance. Don’t let your mistakes weigh you down, but don’t dismiss them either.
-> Reflect_On_Honesty

// Branch: Hard_To_Be_Honest
= Hard_To_Be_Honest
Honesty with yourself is the hardest kind. We all want to believe we’re doing the best we can, but sometimes we lie to ourselves to avoid the truth. What truth are you avoiding?

* I’m scared of failing, so sometimes I pretend everything’s fine.
    -> Scared_Of_Failing

* I’m not sure who I am anymore.
    -> Not_Sure_Who_I_Am

// Sub-Branch: Scared_Of_Failing
= Scared_Of_Failing
It’s okay to be scared, but pretending won’t help you in the long run. Facing that fear is the only way forward.

* I’ll try to be more honest with myself.
    -> Honest_With_Self

* It’s hard, but I’ll work on it.
    -> Work_On_It

// Follow-up: Honest_With_Self
= Honest_With_Self
Good. Honesty with yourself is a step towards growth.
-> AddEdu
-> Reflect_On_Honesty

// Follow-up: Work_On_It
= Work_On_It
That’s a great place to start. Little by little, you’ll get there.
-> Reflect_On_Honesty

// Sub-Branch: Not_Sure_Who_I_Am
= Not_Sure_Who_I_Am
You’re still you, but the more you lie to yourself, the further you drift from who you really are. Don’t lose yourself.
-> AddGang
-> Reflect_On_Honesty

// Reflection: Updated Quest Completion
= Reflect_On_Honesty
Gran: Honesty isn’t just about what you say to others—it’s about what you admit to yourself. Are you ready to face the truth and make changes?

* Yes, I’ll work towards being more truthful and accountable.
    -> Complete_Honesty_Quest_Success

* I don’t think I’m ready for that yet.
    -> Complete_Honesty_Quest_Failure

= Complete_Honesty_Quest_Success
You’ve chosen to confront the truth and seek support. This honesty strengthens you.
~ EduStat += 1

-> END

= Complete_Honesty_Quest_Failure
You’ve chosen avoidance, turning away from the difficult path of honesty.
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
