 Conflict is a part of life, but how you manage it can make all the difference. How do you usually deal with conflicts?

* I try to talk it out calmly.
    -> Talk_It_Out

* I avoid conflict as much as possible.
    -> Avoid_Conflict

* I get defensive and argue.
    -> Get_Defensive_

= Talk_It_Out
Teacher: Talking things out calmly is a mature approach. It shows respect for the other person’s perspective. How do you usually start those conversations?

* I listen first, then share my thoughts.
    -> Listen_First

* I make sure they understand my side right away.
    -> Explain_My_Side

= Listen_First
Teacher: Listening is one of the most important parts of resolving conflict. It shows that you care about what the other person has to say.
-> END

= Explain_My_Side
Teacher: It’s good to express your perspective, but remember to balance it with listening. It helps create mutual understanding.
-> END

= Avoid_Conflict
Teacher: Avoiding conflict can keep things calm in the short term, but sometimes issues need to be addressed. What makes you want to avoid conflicts?

* I don’t want to make things worse.
    -> Dont_Make_Things_Worse

* I feel uncomfortable confronting others.
    -> Uncomfortable_Confrontation

= Dont_Make_Things_Worse
Teacher: That’s understandable. But sometimes avoiding issues can make them worse over time. Try to find a way to address the problem without escalating it.
-> END

= Uncomfortable_Confrontation
Teacher: Confrontation can be uncomfortable, but it’s an important skill. It’s okay to be nervous—start small and build your confidence in addressing issues.
-> END

= Get_Defensive_
Teacher: It’s easy to get defensive, especially when you feel attacked. What makes you feel defensive in conflicts?

* I feel like the other person is blaming me.
    -> Feel_Blamed

* I don’t like being wrong.
    -> Dont_Like_Being_Wrong

= Feel_Blamed
Teacher: Feeling blamed can trigger defensiveness, but try to focus on the issue instead of the emotions. It helps to separate the problem from yourself.
-> END

= Dont_Like_Being_Wrong
Teacher: Nobody likes being wrong, but admitting when you’re wrong is a sign of strength. It shows you’re willing to learn and grow.
-> END


=AddEdu
~EduStat += 1
~GangStat -= 1
~ GangStat = MIN(GangStat,0)
->END

=AddGang
~EduStat -= 1
~ EduStat = MIN(EduStat,0)
~GangStat += 1
->END
