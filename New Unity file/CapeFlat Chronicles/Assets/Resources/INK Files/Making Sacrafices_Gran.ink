INCLUDE Global.ink

// Dialogue 20: Making Sacrifices
Sometimes, to get where you want to be, you have to make sacrifices, my child. What are you willing to give up for your dreams?

* I’d give up my free time if it means achieving my goals.
    -> Sacrifice_Free_Time

* I’m not sure. It feels like I’ve already sacrificed so much.
    -> Sacrificed_Too_Much

* I don’t believe in sacrificing for anything. Life’s too short.
    -> No_Sacrifices

// Branch: Sacrifice Free Time
= Sacrifice_Free_Time
That’s a wise choice. Time is precious, and how you use it shapes your future. But don’t forget to leave room for yourself. What will you focus on during that time?

* Studying harder and working towards my education.
    -> Focus_On_Education

* Supporting my family and helping them however I can.
    -> Focus_On_Family

= Focus_On_Education
Education is a powerful tool. Sacrificing free time now can lead to opportunities that change your life.
-> AddEdu
-> END

= Focus_On_Family
Helping your family is noble, but don’t lose sight of your own dreams. Balance is important.
-> AddEdu
-> END

// Branch: Sacrificed Too Much
= Sacrificed_Too_Much
I understand, my child. Sacrifice can be exhausting, especially when it feels like there’s no reward. What’s been the hardest thing for you to give up?

* I’ve given up my own happiness to make others happy.
    -> Sacrificed_Happiness

* I’ve let go of my dreams to survive.
    -> Let_Go_Of_Dreams

= Sacrificed_Happiness
It’s hard to always put others first. You deserve happiness too. Don’t forget that your well-being matters.
-> AddEdu
-> END

= Let_Go_Of_Dreams
Letting go of your dreams doesn’t mean they’re gone forever. It’s never too late to start chasing them again.
-> AddEdu
-> END

// Branch: No Sacrifices
= No_Sacrifices
Life is short, but that doesn’t mean you shouldn’t work for something better. Do you think living without sacrifices will get you where you want to go?

* Maybe not, but I want to enjoy the moment while I can.
    -> Live_In_The_Moment

* Probably not, but I don’t want to feel like I’m losing everything.
    -> Afraid_To_Lose

= Live_In_The_Moment
Enjoying the moment is important, but don’t forget that the choices you make today shape your tomorrow.
-> AddGang
-> END

= Afraid_To_Lose
Sacrifices don’t mean losing everything, my child. Sometimes they’re just stepping stones to something greater.
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

