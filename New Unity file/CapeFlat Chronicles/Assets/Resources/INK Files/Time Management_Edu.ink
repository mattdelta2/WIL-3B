INCLUDE Global.ink

// Dialogue: Managing Your Time
Managing your time well is essential, especially with everything you’re juggling. How do you usually manage your time?

* I try to make a schedule and stick to it.
    -> Schedule_And_Stick

* I just do whatever I can when I find time.
    -> Do_When_I_Can

* I often procrastinate, and things pile up.
    -> Procrastinate

= Schedule_And_Stick
That’s a great approach. It helps you stay organized and reduces stress. What do you usually schedule first?

* Schoolwork, because it’s my top priority.
    -> Schoolwork_First

* I try to schedule a balance between school and relaxation.
    -> Balance_Between

= Schoolwork_First
That’s a smart move. Focusing on schoolwork first means you’re giving it the importance it deserves.
-> Time_Management_Challenge

= Balance_Between
It’s important to balance responsibilities and relaxation. Taking breaks helps you stay productive in the long run.
-> Time_Management_Challenge

= Do_When_I_Can
It’s good that you’re getting things done, but planning ahead could make your life a lot easier. Have you tried setting small goals?

* I’ve tried, but it’s hard to keep up with them.
    -> Hard_To_Keep_Up

* No, but I think it might help me.
    -> Think_It_Might_Help

= Hard_To_Keep_Up
It can be challenging, but remember, small progress is still progress. Don’t be too hard on yourself.
-> Time_Management_Challenge

= Think_It_Might_Help
That’s a great attitude. Setting achievable goals could help you create a routine that works for you.
-> Time_Management_Challenge

= Procrastinate
Procrastination is something everyone struggles with from time to time. What makes you put things off?

* I feel overwhelmed by how much there is to do.
    -> Feel_Overwhelmed

* I get easily distracted.
    -> Easily_Distracted

= Feel_Overwhelmed
When things feel overwhelming, breaking tasks into smaller steps can make them more manageable. Have you tried that?

* Not really. It all feels like too much.
    -> Feels_Too_Much

* Yes, but it’s still hard to get started.
    -> Hard_To_Get_Started

= Feels_Too_Much
I understand. Start small and build from there. Even completing one tiny step can help you feel more in control.
-> Time_Management_Challenge

= Hard_To_Get_Started
Getting started is often the hardest part. Try giving yourself a small reward after each task—it might help motivate you.
-> Time_Management_Challenge

= Easily_Distracted
Distractions are hard to avoid, especially with everything going on. Have you tried creating a space or time where you can focus?

* I haven’t really thought about it.
    -> Havent_Thought

* I try, but it doesn’t always work.
    -> Try_But_Hard

= Havent_Thought
Creating a space dedicated to work or study could help. It doesn’t have to be perfect, just somewhere you feel comfortable focusing.
-> Time_Management_Challenge

= Try_But_Hard
That’s understandable. Eliminating distractions takes practice, but keep at it. Each effort makes a difference.
-> Time_Management_Challenge

// Time Management Quest
= Time_Management_Challenge
The teacher suggests trying a time management challenge. Will you commit to following a schedule for a week?

* Yes, I’ll give it a try.
    -> Quest_Commit
    -> AddEdu

* No, I don’t think I can stick to it.
    -> Quest_Decline
    -> AddGang

= Quest_Commit
Taking on this challenge shows real dedication. A commitment like this will help you build strong habits for the future.
-> END

= Quest_Decline
Not ready to commit? That’s okay. Sometimes it takes time to build the confidence for these kinds of changes.
-> END

= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0)
-> END
