INCLUDE Global.ink

// Dialogue: Facing Challenges
Life’s full of challenges. What matters is how you respond to them. Are you facing any challenges right now?

* I’m struggling with keeping up with my studies.
    -> Struggling_With_Studies

* I’m dealing with stuff outside of school. It’s hard to focus.
    -> Stuff_Outside_School

* I don’t feel like I’m good enough to succeed.
    -> Not_Good_Enough

// Branch: Struggling with Studies
= Struggling_With_Studies
That’s understandable. School isn’t easy, but you have to push through. What are you struggling with the most?

* I’m having trouble with math. It’s so hard to understand.
    -> Math_Trouble

* I’m just feeling overwhelmed by everything.
    -> Feeling_Overwhelmed

= Math_Trouble
Math can be tough, but once you break it down, it gets easier. Don’t give up.
-> AddEdu
-> END

= Feeling_Overwhelmed
That’s a common feeling, but don’t let it paralyze you. Start small and take one step at a time.
-> AddEdu
-> END

// Branch: Stuff Outside School
= Stuff_Outside_School
I understand that life outside of school can be tough. But remember, education is your way out. What’s distracting you?

* I’ve got friends pulling me in the wrong direction.
    -> Friends_Pulling

* I’m just trying to keep my head above water.
    -> Keep_Head_Above_Water

= Friends_Pulling
Those kinds of friends will drag you down. Focus on what’s best for your future.
-> AddGang
-> END

= Keep_Head_Above_Water
That’s all you can do sometimes, but don’t lose sight of what’s important. Take it one step at a time.
-> AddEdu
-> END

// Branch: Not Feeling Good Enough
= Not_Good_Enough
That’s a dangerous mindset. You are good enough, but you need to believe it. What’s making you feel this way?

* I feel like I’m always behind everyone else.
    -> Always_Behind

* I’ve made too many mistakes to turn things around.
    -> Too_Many_Mistakes

= Always_Behind
Everyone moves at their own pace. Don’t compare yourself to others. Focus on your own journey.
-> AddEdu
-> END

= Too_Many_Mistakes
Mistakes don’t define you. What you do after them does. Start small, and you’ll see things improve.
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
