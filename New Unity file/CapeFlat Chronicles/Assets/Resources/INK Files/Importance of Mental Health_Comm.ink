INCLUDE Global.ink

// Dialogue 24: The Importance of Mental Health
Mental health is just as important as physical health. How do you take care of your mental well-being?

* I talk to friends and family when I feel down.
    -> Talk_To_Friends

* I don’t really think about it.
    -> Dont_Think_About_Mental_Health

* I struggle with my mental health.
    -> Struggle_With_Mental_Health

// Branch: Talk_To_Friends
= Talk_To_Friends
That’s fantastic! Having a support system is vital for mental health.

* I try to express my feelings.
    -> Expressing_Feelings

// Sub-Branch: Expressing_Feelings
= Expressing_Feelings
Good for you! Expressing emotions can be very therapeutic.
-> AddEdu
-> END

// Branch: Don’t_Think_About_Mental_Health
= Dont_Think_About_Mental_Health
It’s easy to overlook mental health, but it’s important to pay attention to your feelings.
-> END

// Branch: Struggle_With_Mental_Health
= Struggle_With_Mental_Health
I’m sorry to hear that. It’s essential to reach out for help when you need it.
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
