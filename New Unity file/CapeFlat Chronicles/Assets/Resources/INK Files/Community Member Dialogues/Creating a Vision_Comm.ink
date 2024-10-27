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

// Sub-Branch: Focusing_On_Studies
= Focusing_On_Studies
Perfect! Education is a stepping stone to success.
-> AddEdu
-> END

// Branch: Unsure_Of_Vision
= Unsure_Of_Vision
That’s okay! Sometimes, it takes time to develop a clear vision. What interests you?
-> END

// Branch: No_Need_For_Vision
= No_Need_For_Vision
Having a vision can guide your choices and keep you motivated. It’s worth considering.
-> AddGang
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END
