INCLUDE Global.ink

// Dialogue 15: Finding Joy
Joy is important for a balanced life. What brings you joy?

* I love spending time with my friends.
    -> Friends_Joy

* I don’t know what brings me joy.
    -> Unknown_Joy

* I don’t find joy in much these days.
    -> No_Joy

// Branch: Friends_Joy
= Friends_Joy
That’s wonderful! Friends can provide support and happiness. What do you like to do together?

* We enjoy playing games.
    -> Gaming_Suggestion

// Sub-Branch: Gaming_Suggestion
= Gaming_Suggestion
That sounds fun! Have you considered joining a community gaming night?
-> AddEdu
-> END

// Branch: Unknown_Joy
= Unknown_Joy
That’s okay! It’s a journey to discover what makes you happy. Have you tried new hobbies?
-> END

// Branch: No_Joy
= No_Joy
It’s tough when you’re feeling down. Sometimes, trying new things can help reignite that spark.
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

