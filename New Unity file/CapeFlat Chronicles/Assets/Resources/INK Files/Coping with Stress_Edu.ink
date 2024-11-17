INCLUDE Global.ink
 
 Stress is something we all have to deal with, but how you handle it can make all the difference. What do you do when you’re stressed?

* I go for a walk or exercise to clear my mind.
    -> Exercise

* I bottle it up. There’s not much else I can do.
    -> Bottle_It_Up

* I talk to my friends or family.
    -> Talk_To_Friends

= Exercise
 That’s a great way to relieve stress. Physical activity can really help you manage your emotions.

 "Here’s a challenge: next time you’re stressed, try adding a new form of exercise, like stretching or yoga. How do you think that might help you?"

* I think it could help me stay even more relaxed.
    -> AddEdu
    Teacher: "Absolutely. Finding new ways to stay calm and focused can be very empowering."
    -> StressReflection_Complete

* I’m not sure if it will make much difference.
    Teacher: "It might surprise you. Sometimes the smallest changes make the biggest impact."
    -> END

= Bottle_It_Up
 Bottling things up can be dangerous in the long run. It’s important to find healthy ways to let that stress out. Have you thought about trying something different?

* I’ve thought about it, but it’s hard to change.
    -> Hard_To_Change
    -> AddGang  // Bottling up and resistance to change can result in GangStat increase

* Not really. I don’t know what else to do.
    -> No_Alternatives
    -> AddGang  // Avoiding alternatives also increases GangStat

= Hard_To_Change
 Change is always hard, but it’s worth it. Start with small steps—you’ll get there.
-> END

= No_Alternatives
 There are always alternatives. Even something as simple as writing your thoughts down can help. It’s about finding what works for you.
-> END

= Talk_To_Friends
 Talking to someone you trust can be one of the best ways to handle stress. I’m glad you have people to support you.
-> AddEdu  // Positive approach to stress management rewarded with EduStat increase
-> END

= StressReflection_Complete

Teacher: "Well done. Taking on challenges, even small ones, builds resilience. You’re on the right path."
-> AddEdu
-> END


= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END

