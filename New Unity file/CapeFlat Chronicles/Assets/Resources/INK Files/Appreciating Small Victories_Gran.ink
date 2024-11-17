INCLUDE Global.ink


// Dialogue: Appreciating Small Victories
Sometimes life feels like a never-ending race, but it’s the small steps that get you to the finish line. Do you take the time to appreciate your small victories?

* Not really. I feel like they don’t matter in the long run.
    -> Dont_Matter

* I try to, but it’s hard when there’s still so much to do.
    -> Hard_To_Notice

* Yes, Gran. I celebrate every little step forward.
    -> Celebrate_Small_Wins

= Dont_Matter
They matter more than you realize. Every small step you take builds towards something bigger. What’s one small thing you’ve done recently that you’re proud of?

* I finished a task I’d been putting off for weeks.
    -> Finished_Task

* I got through a tough day without giving up.
    -> Survived_Tough_Day

* I can’t think of anything, Gran. Nothing feels like enough.
    -> Nothing_Feels_Enough

= Finished_Task
That’s wonderful! It may feel small, but overcoming procrastination is no easy feat. Be proud of that—it shows growth.
-> AddEdu
-> END

= Survived_Tough_Day
Getting through hard days is no small thing. It takes strength to keep going, even when you’re tired. Recognize that strength in yourself.
-> AddEdu
-> END

= Nothing_Feels_Enough
You’re being too hard on yourself, my child. Even if it feels small to you, it still matters. Take a moment to think about something you’ve done recently—it’s there, even if you don’t see it.
-> END

= Hard_To_Notice
That’s understandable. Life can feel overwhelming, but taking a moment to pause and acknowledge your wins can make a big difference. How do you think you can remind yourself to do that?

* Maybe I could write down my wins at the end of each day.
    -> Write_Daily_Wins

* I’m not sure, Gran. I’ve never thought about it like that.
    -> Never_Thought_About_It

= Write_Daily_Wins
That’s a beautiful idea. Keeping track of your victories will help you see how far you’ve come, even on the hard days.
-> AddEdu
-> END

= Never_Thought_About_It
That’s okay. Start small—just take a moment at the end of each day to reflect. It doesn’t have to be perfect.
-> END

= Celebrate_Small_Wins
Good! Those small victories will give you the strength to keep moving forward. What’s a win you’re most proud of?

* I helped someone who needed it.
    -> Helped_Someone

* I worked hard on something, and it paid off.
    -> Hard_Work_Paid_Off

* I stayed positive, even when things were tough.
    -> Stayed_Positive

= Helped_Someone
Helping others is one of the greatest victories of all. It shows compassion and strength. Keep doing that—it’ll come back to you.
-> AddEdu
-> END

= Hard_Work_Paid_Off
That’s the reward of effort. When you put in the work, you earn the satisfaction that comes with it. Don’t stop now.
-> AddEdu
-> END

= Stayed_Positive
Staying positive is no small feat. It takes courage to hold onto hope when things feel dark. Be proud of that strength.
-> AddEdu
-> END


= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END


