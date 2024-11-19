INCLUDE Global.ink

// Dialogue: Conflict Resolution
Conflict is a part of life, but how you manage it can make all the difference. How do you usually deal with conflicts?

* I try to talk it out calmly.
    -> Talk_It_Out

* I avoid conflict as much as possible.
    -> Avoid_Conflict

* I get defensive and argue.
    -> Get_Defensive_

// Branch: Talk It Out
= Talk_It_Out
Teacher: Talking things out calmly is a mature approach. It shows respect for the other person’s perspective. How do you usually start those conversations?

* I listen first, then share my thoughts.
    -> Listen_First

* I make sure they understand my side right away.
    -> Explain_My_Side

* I stay neutral and try to keep things fair.
    -> Stay_Neutral

= Listen_First
Teacher: Listening is one of the most important parts of resolving conflict. It shows that you care about what the other person has to say.
-> AddEdu
-> END

= Explain_My_Side
Teacher: It’s good to express your perspective, but remember to balance it with listening. It helps create mutual understanding.
-> END

= Stay_Neutral
Teacher: Staying neutral can help de-escalate tension, but don’t be afraid to express yourself when necessary. Balance is key.
-> AddEdu
-> END

// Branch: Avoid Conflict
= Avoid_Conflict
Teacher: Avoiding conflict can keep things calm in the short term, but sometimes issues need to be addressed. What makes you want to avoid conflicts?

* I don’t want to make things worse.
    -> Dont_Make_Things_Worse

* I feel uncomfortable confronting others.
    -> Uncomfortable_Confrontation

* I don’t think it’s worth the effort.
    -> Not_Worth_It

= Dont_Make_Things_Worse
Teacher: That’s understandable. But sometimes avoiding issues can make them worse over time. Try to find a way to address the problem without escalating it.
-> AddEdu
-> END

= Uncomfortable_Confrontation
Teacher: Confrontation can be uncomfortable, but it’s an important skill. It’s okay to be nervous—start small and build your confidence in addressing issues.
-> END

= Not_Worth_It
Teacher: It might feel like that sometimes, but addressing problems early can save you from bigger issues later on.
-> AddGang
-> END

// Branch: Get Defensive
= Get_Defensive_
Teacher: It’s easy to get defensive, especially when you feel attacked. What makes you feel defensive in conflicts?

* I feel like the other person is blaming me.
    -> Feel_Blamed

* I don’t like being wrong.
    -> Dont_Like_Being_Wrong

* I get frustrated when people don’t listen to me.
    -> Frustrated_Not_Heard

= Feel_Blamed
Teacher: Feeling blamed can trigger defensiveness, but try to focus on the issue instead of the emotions. It helps to separate the problem from yourself.
-> AddGang
-> END

= Dont_Like_Being_Wrong
Teacher: Nobody likes being wrong, but admitting when you’re wrong is a sign of strength. It shows you’re willing to learn and grow.
-> END

= Frustrated_Not_Heard
Teacher: It’s frustrating when you feel unheard, but staying calm and expressing yourself clearly can help others understand your perspective.
-> AddEdu
-> END

// Quest Integration: Conflict Resolution Quest
* I’d like to get better at handling conflicts.
    -> Start_ConflictResolution_Quest

= Start_ConflictResolution_Quest
Teacher: Great! Why don’t you try actively listening in your next conflict? Really focus on the other person’s perspective before sharing your own.
-> END

// Upon completion of conflict resolution
= Complete_ConflictResolution_Quest
You successfully applied the conflict resolution technique and learned the importance of listening first. Well done!
-> AddEdu

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END
