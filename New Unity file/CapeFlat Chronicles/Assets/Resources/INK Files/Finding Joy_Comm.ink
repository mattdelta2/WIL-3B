INCLUDE Global.ink

// Dialogue 15: Finding Joy
Joy is important for a balanced life, my child. It’s what keeps us moving forward, even when things get hard. What brings you joy?

* I love spending time with my friends.
    -> Friends_Joy

* I enjoy learning or discovering something new.
    -> Learning_Joy

* I don’t know what brings me joy.
    -> Unknown_Joy

// Branch: Friends_Joy
= Friends_Joy
That’s wonderful! Friends can provide so much support and happiness. What do you like to do together?

* We enjoy playing games and having fun.
    -> Gaming_Suggestion

* We like to explore new places together.
    -> Exploring_Suggestion

* We mostly just talk and hang out.
    -> Talking_Suggestion

= Gaming_Suggestion
That sounds fun! Playing games can bring people closer together. Have you thought about organizing a game night for your group? It could be a great way to share even more laughter.
-> AddEdu
-> END

= Exploring_Suggestion
Exploring new places can be so refreshing. It’s a chance to bond while discovering new things. Keep nurturing those connections—they’ll bring you even more joy.
-> AddEdu
-> END

= Talking_Suggestion
Sometimes, just talking and sharing life is all we need. It’s those simple moments that build the strongest bonds.
-> AddEdu
-> END

// Branch: Learning_Joy
= Learning_Joy
Learning is such a powerful source of joy. It opens doors and fills your mind with possibilities. What excites you the most about learning?

* I love solving problems and figuring things out.
    -> Problem_Solving_Joy

* I enjoy learning about other people’s stories.
    -> Stories_Joy

* I like experimenting and creating new things.
    -> Creating_Joy

= Problem_Solving_Joy
That’s amazing! Solving problems sharpens your mind and prepares you for anything. Never stop seeking answers—you’re building something great.
-> AddEdu
-> END

= Stories_Joy
Stories can teach us so much. They connect us to the world and help us understand others. Keep that curiosity alive—it will take you far.
-> AddEdu
-> END

= Creating_Joy
Creativity is a gift. It brings life to new ideas and gives you a unique way to express yourself. Keep experimenting, my child!
-> AddEdu
-> END

// Branch: Unknown_Joy
= Unknown_Joy
That’s okay, my child. Not everyone knows right away. Sometimes it takes time to discover what makes your heart happy. Have you thought about trying something new?

* Maybe I could pick up a hobby or learn a skill.
    -> New_Hobby_Suggestion

* I think I need to spend more time outside.
    -> Spend_Time_Outside

* I’m not sure where to start, Gran.
    -> Unsure_Joy_Path

= New_Hobby_Suggestion
Great idea! Hobbies give you a way to express yourself and discover hidden talents. Start small—you never know what you might love.
-> AddEdu
-> END

= Spend_Time_Outside
Nature has a way of healing and inspiring us. Take a walk, breathe in the fresh air, and let yourself feel free for a while.
-> AddEdu
-> END

= Unsure_Joy_Path
That’s okay too, my child. Take one small step. It could be trying a new activity or simply asking someone what brings them joy. You’ll find your path.
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
