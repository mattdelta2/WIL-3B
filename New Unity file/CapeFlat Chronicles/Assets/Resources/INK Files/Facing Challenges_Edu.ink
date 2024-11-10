INCLUDE Global.ink

Life’s full of challenges. What matters is how you respond to them. Are you facing any challenges right now?

* I’m struggling with keeping up with my studies.
    -> Struggling_With_Studies

* I’m dealing with stuff outside of school. It’s hard to focus.
    -> Stuff_Outside_School

* I don’t feel like I’m good enough to succeed.
    -> Not_Good_Enough

= Struggling_With_Studies
 That’s understandable. School isn’t easy, but you have to push through. What are you struggling with the most?

* I’m having trouble with math. It’s so hard to understand.
    -> Math_Trouble

* I’m just feeling overwhelmed by everything.
    -> Feeling_Overwhelmed

= Math_Trouble
 Math can be tough, but once you break it down, it gets easier. Don’t give up.
-> END

= Feeling_Overwhelmed
 That’s a common feeling, but don’t let it paralyze you. Take things one step at a time.
-> END

= Stuff_Outside_School
 I understand that life outside of school can be tough. But remember, education is your way out. What’s distracting you?

* I’ve got friends pulling me in the wrong direction.
    -> Friends_Pulling

* I’m just trying to keep my head above water.
    -> Keep_Head_Above_Water

* {stayFocusedQuestStarted == false} Can you help me find a way to stay focused on school?
    -> Start_StayFocused_Quest

= Friends_Pulling
 Those kinds of friends will drag you down. You need to focus on what’s best for you.
-> END

= Keep_Head_Above_Water
 That’s all you can do sometimes, but don’t lose sight of what’s important.
-> END

// Start Stay Focused Quest
= Start_StayFocused_Quest
Teacher: Of course. Staying focused can be hard, but setting small goals can help. Let’s work together to set up a study routine.
~ stayFocusedQuestStarted = true
* Yes, that sounds like a good plan.
    -> Accept_StayFocused_Quest
* I don’t think I can do this right now.
    -> Decline_StayFocused_Quest

= Accept_StayFocused_Quest
Teacher: Great! Start with one small goal every day, and build from there. We’ll check in to see how it’s going.
~ stayFocusedQuestCompleted = true
-> AddEdu

= Decline_StayFocused_Quest
Teacher: That’s okay. Just remember, a little effort each day goes a long way in the end.
-> AddGang

= Not_Good_Enough
 That’s a dangerous mindset. You are good enough, but you need to believe that. What’s making you feel this way?

* I feel like I’m always behind everyone else.
    -> Always_Behind

* I’ve made too many mistakes to turn things around.
    -> Too_Many_Mistakes

= Always_Behind
 Everyone moves at their own pace. Don’t compare yourself to others.
-> END

= Too_Many_Mistakes
 Mistakes don’t define you. What you do after them does.
-> END

=AddEdu
~EduStat += 1
~ GangStat = MIN(GangStat,0)
->END

=AddGang
~EduStat = MIN(EduStat,0)
~GangStat += 1
->END
