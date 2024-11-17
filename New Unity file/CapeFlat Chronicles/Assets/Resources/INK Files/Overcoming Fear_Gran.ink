INCLUDE Global.ink


// Dialogue: Overcoming Fear
Fear can be a heavy weight, my child. It can keep you stuck where you are, too afraid to take the next step. How do you deal with fear when it shows up?

* I try to ignore it, but it doesn’t go away.
    -> Ignore_Fear

* I face it head-on, even if it scares me.
    -> Face_Fear

* I let it hold me back. It’s hard to move forward sometimes.
    -> Held_Back

= Ignore_Fear
Ignoring fear might feel easier, but it’s still there, holding you in place. What are you afraid of?

* I’m afraid of failing, Gran.
    -> Afraid_Of_Failure

* I’m afraid of letting people down.
    -> Afraid_Of_Disappointing

* I don’t even know what I’m afraid of—it’s just there.
    -> Afraid_Of_Unknown

= Face_Fear
Facing your fear is brave. It shows strength, even when you feel small. What helps you find that courage?

* I remind myself why I’m doing this.
    -> Remember_Your_Why

* I try to break it into smaller steps.
    -> Take_Small_Steps

= Held_Back
It’s okay to feel that way, but don’t let fear become your cage. What’s one thing you want to do but fear is stopping you?

* I want to try something new, but I’m scared of failing.
    -> Fear_New_Things

* I want to stand up for myself, but it’s hard.
    -> Fear_Standing_Up

// Sub-Branch: Afraid of Failure
= Afraid_Of_Failure
Failure is just a part of life, my child. Every failure is a step toward something greater. Don’t fear it—embrace what it teaches you.
-> AddEdu
-> END

// Sub-Branch: Afraid of Disappointing
= Afraid_Of_Disappointing
Letting people down is hard, but remember, no one is perfect. The ones who love you will understand if you’re trying your best.
-> AddEdu
-> END

// Sub-Branch: Afraid of the Unknown
= Afraid_Of_Unknown
The unknown can feel terrifying, but it’s where growth happens. You can’t see what’s ahead, but each step forward will light the way.
-> AddEdu
-> END

// Sub-Branch: Remember Your Why
= Remember_Your_Why
That’s a powerful tool. When fear whispers in your ear, let your reason drown it out. Keep your eyes on what matters most.
-> AddEdu
-> END

// Sub-Branch: Take Small Steps
= Take_Small_Steps
Breaking fear into smaller pieces makes it easier to manage. One small victory at a time, and suddenly, fear isn’t so big anymore.
-> AddEdu
-> END

// Sub-Branch: Fear of New Things
= Fear_New_Things
Trying new things is how you grow. Fear means you’re stepping out of your comfort zone, and that’s where the magic happens.
-> AddEdu
-> END

// Sub-Branch: Fear of Standing Up
= Fear_Standing_Up
Standing up for yourself takes courage, but it’s worth it. You’re teaching the world how to treat you. Start small, and it will get easier.
-> AddEdu
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
