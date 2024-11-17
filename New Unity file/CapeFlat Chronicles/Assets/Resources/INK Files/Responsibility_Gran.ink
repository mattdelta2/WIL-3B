INCLUDE Global.ink

// Dialogue 13: Responsibility
Taking responsibility isn’t just about owning up to your mistakes—it’s about doing what needs to be done, even when it’s hard. What do you think it means to be responsible, my child?

* It means doing what I say I’ll do, no matter what.
    -> Responsibility_Commitment

* It’s just making sure I don’t mess up.
    -> Responsibility_Avoiding

* I’m not sure, Gran. Sometimes it feels overwhelming.
    -> Responsibility_Overwhelmed

= Responsibility_Commitment
That’s a good answer. Keeping your word is one of the most important things you can do. But what happens when something gets in the way of your promises?

* I’ll find a way to follow through, no matter what.
    -> Commitment_Follow_Through

* I’ll be honest about not being able to keep my word.
    -> Commitment_Honesty

= Commitment_Follow_Through
That’s the spirit. Finding a way shows you’re reliable and resourceful. I’m proud of you.
-> AddEdu
-> Responsibility_Quest

= Commitment_Honesty
Honesty is just as important as following through. If you can’t keep your promise, at least let people know why. That’s taking responsibility too.
-> AddEdu
-> Responsibility_Quest

= Responsibility_Avoiding
Just avoiding mistakes isn’t enough, my child. Life will test you, and you’ll have to make tough decisions. What do you do when you don’t know what the right choice is?

* I ask for advice from people I trust.
    -> Avoiding_Ask_Advice

* I just make a choice and hope for the best.
    -> Avoiding_Hope_For_Best

= Avoiding_Ask_Advice
Asking for advice shows wisdom. None of us have all the answers, but we can learn from others who’ve been through it.
-> AddEdu
-> Responsibility_Quest

= Avoiding_Hope_For_Best
Sometimes you’ll have to take risks, but don’t rely on luck alone. Take time to think things through. It’ll serve you better in the long run.
-> AddEdu
-> Responsibility_Quest

= Responsibility_Overwhelmed
I know it feels like a lot sometimes. The weight of responsibility can be heavy, but you don’t have to carry it all alone. What’s making it so hard for you?

* I don’t know where to start, Gran.
    -> Overwhelmed_Where_To_Start

* I’m scared of letting people down.
    -> Overwhelmed_Scared

= Overwhelmed_Where_To_Start
Starting is always the hardest part. Break things into smaller steps, and tackle them one at a time. You’ll get there.
-> AddEdu
-> Responsibility_Quest

= Overwhelmed_Scared
Letting people down happens sometimes, but it’s not the end of the world. What matters is that you tried. Learn from it, and keep moving forward.
-> AddEdu
-> Responsibility_Quest

// Responsibility Quest
= Responsibility_Quest
Let’s put this into practice. I need your help with something important. Can I trust you to take care of it?

* Of course, Gran. I’ll handle it.
    -> Quest_Success

* I don’t know if I can do it, but I’ll try.
    -> Quest_Try

* I don’t think I’m ready, Gran.
    -> Quest_Failure

= Quest_Success
That’s my child. I knew I could count on you. You’ll make me proud.
~ EduStat += 1
-> END

= Quest_Try
Trying is all I ask. The effort is just as important as the result.
~ EduStat += 1
-> END

= Quest_Failure
I understand. Responsibility is a big step, but don’t shy away from it forever. You’ll need to take it on one day.
~ GangStat += 1
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
