 Stress is something we all have to deal with, but how you handle it can make all the difference. What do you do when you’re stressed?

* I go for a walk or exercise to clear my mind.
    -> Exercise

* I bottle it up. There’s not much else I can do.
    -> Bottle_It_Up

* I talk to my friends or family.
    -> Talk_To_Friends

= Exercise
 That’s a great way to relieve stress. Physical activity can really help you manage your emotions.
-> END

= Bottle_It_Up
 Bottling things up can be dangerous in the long run. It’s important to find healthy ways to let that stress out. Have you thought about trying something different?

* I’ve thought about it, but it’s hard to change.
    -> Hard_To_Change

* Not really. I don’t know what else to do.
    -> No_Alternatives

= Hard_To_Change
 Change is always hard, but it’s worth it. Start with small steps—you’ll get there.
-> END

= No_Alternatives
 There are always alternatives. Even something as simple as writing your thoughts down can help. It’s about finding what works for you.
-> END

= Talk_To_Friends
 Talking to someone you trust can be one of the best ways to handle stress. I’m glad you have people to support you.
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
