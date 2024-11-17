INCLUDE Global.ink

// Dialogue 18: Coping with Stress
Stress can weigh you down, my child. It’s important to find ways to cope with it. How do you usually handle stress?

* I try to stay calm and deal with things one step at a time.
    -> Stay_Calm

* I get overwhelmed and don’t know what to do.
    -> Overwhelmed

* I bottle it up and keep going until I can’t anymore.
    -> Bottle_It_Up

// Branch: Stay_Calm
= Stay_Calm
That’s a good approach. Staying calm helps you think clearly. What helps you the most when you’re trying to stay calm?

* I take deep breaths and focus on what I can control.
    -> Deep_Breaths

* I talk to someone I trust about how I feel.
    -> Talk_To_Someone

= Deep_Breaths
Breathing is powerful. It helps you center yourself when life feels chaotic. Keep practicing that, my child.
-> AddEdu
-> END

= Talk_To_Someone
That’s wise. Talking to someone you trust can lighten the load and give you a new perspective.
-> AddEdu
-> END

// Branch: Overwhelmed
= Overwhelmed
It’s okay to feel overwhelmed sometimes. We all do. But you can’t let it stop you. What do you think would help?

* Taking breaks and stepping away when things get too much.
    -> Take_Breaks

* Breaking tasks into smaller, manageable steps.
    -> Break_Tasks

= Take_Breaks
That’s a good idea. Rest doesn’t mean you’re giving up—it means you’re giving yourself the strength to keep going.
-> AddEdu
-> END

= Break_Tasks
Breaking things into smaller steps is a smart way to handle stress. It makes the big picture feel less intimidating.
-> AddEdu
-> END

// Branch: Bottle It Up
= Bottle_It_Up
Bottling up your feelings might seem like the easiest way, but it only builds more pressure. What stops you from letting it out?

* I don’t want to bother anyone with my problems.
    -> Dont_Want_To_Bother

* I don’t know how to express how I feel.
    -> Dont_Know_How

= Dont_Want_To_Bother
You’re never a bother to the people who care about you. Letting them in can make all the difference.
-> AddEdu
-> END

= Dont_Know_How
Expressing feelings takes practice, but it’s worth it. Start small—write them down or talk to someone you trust.
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
