INCLUDE Global.ink

// Dialogue 6: Importance of Education
Education is key to success. How do you feel about your current studies?

* I enjoy learning new things.
    -> Enjoy_Learning

* School is okay, but I find it boring.
    -> School_Boring

* I don’t think education matters much.
    -> Education_Doesnt_Matter

// Branch: Enjoy_Learning
= Enjoy_Learning
That’s fantastic! Have you thought about pursuing subjects that interest you further?

* I’m considering it.
    -> Considering_Subjects

// Sub-Branch: Considering_Subjects
= Considering_Subjects
That’s great! Let me know if you need guidance in choosing classes.
-> AddEdu
-> END

// Branch: School_Boring
= School_Boring
I understand that. Finding ways to make learning enjoyable can make a big difference. What subjects do you like?
-> END

// Branch: Education_Doesnt_Matter
= Education_Doesnt_Matter
That’s a common belief, but education can provide opportunities you might not see now.
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
