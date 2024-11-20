INCLUDE Global.ink

// Dialogue 25: Creating a Vision
Creating a vision for your future can provide direction. Do you have a vision for where you want to be in five years?

* I want to be successful and happy.
    -> Successful_Happy

* I’m not sure what my vision is.
    -> Unsure_Of_Vision

* I don’t think I need a vision.
    -> No_Need_For_Vision

// Branch: Successful_Happy
= Successful_Happy
That’s a great vision! What steps are you taking to reach that happiness?

* I’m focusing on my studies.
    -> Focusing_On_Studies

* I’m working hard to improve myself every day.
    -> Self_Improvement

= Focusing_On_Studies
Perfect! Education is a stepping stone to success. Keep your focus strong.
-> AddEdu
-> END

= Self_Improvement
That’s a strong mindset. Personal growth is the foundation of lasting success.
-> AddEdu
-> END

// Branch: Unsure_Of_Vision
= Unsure_Of_Vision
That’s okay! Sometimes, it takes time to develop a clear vision. What interests you the most right now?

* Exploring new opportunities to see what fits.
    -> Explore_Opportunities

* Finding something I’m passionate about.
    -> Find_Passion

= Explore_Opportunities
That’s a smart approach. The more you explore, the closer you’ll get to discovering your vision.
-> AddEdu
-> END

= Find_Passion
Passion fuels motivation. Take your time to discover what truly excites you.
-> AddEdu
-> END

// Branch: No_Need_For_Vision
= No_Need_For_Vision
Having a vision can guide your choices and keep you motivated. Why do you feel you don’t need one?

* I prefer to take life as it comes.
    -> Take_Life_As_It_Comes

* I don’t think visions make a difference.
    -> Visions_Not_Important

= Take_Life_As_It_Comes
Taking life as it comes can work, but having goals can help you make the most of opportunities.
-> AddGang
-> END

= Visions_Not_Important
It’s your choice, but sometimes a vision gives life purpose and direction.
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
