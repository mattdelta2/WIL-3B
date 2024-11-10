INCLUDE Global.ink

 
Understanding your emotions is important. How do you usually deal with your emotions?

* I bottle them up and try not to think about them.
    -> Bottle_Up_Emotions

* I let myself feel them, but I don’t let them control me.
    -> Feel_Emotions

* I talk about my feelings with people I trust.
    -> Talk_About_Emotions

= Bottle_Up_Emotions
 Bottling up your emotions can be harmful in the long run. It’s important to let them out in a healthy way. Have you tried expressing them differently?

* I haven’t really thought about it.
    -> Havent_Thought_About_It

* It’s hard for me to express how I feel.
    -> Hard_To_Express

= Havent_Thought_About_It
 It’s okay if you haven’t thought about it before, but consider finding a way to let those emotions out. It could make a big difference.
-> Emotional_Reflection_Quest

= Hard_To_Express
 Expressing emotions can be tough, especially if you’re not used to it. Start small—maybe write them down or talk to someone you trust.
-> Emotional_Reflection_Quest

= Feel_Emotions
 That’s a healthy approach. It’s important to acknowledge what you feel without letting it dictate your actions. What helps you stay in control?

* I take deep breaths and think things through.
    -> Deep_Breaths

* I remind myself that the feelings will pass.
    -> Feelings_Pass

= Deep_Breaths
 Breathing exercises are a great way to stay calm. They help you refocus and regain control.
-> Emotional_Reflection_Quest

= Feelings_Pass
 Reminding yourself that emotions are temporary is a powerful tool. It helps put things in perspective.
-> Emotional_Reflection_Quest

= Talk_About_Emotions
 Talking about your emotions can be very helpful. Who do you usually talk to when you’re feeling overwhelmed?

* I talk to my friends.
    -> Talk_To_FriendS

* I talk to my family.
    -> Talk_To_Family

= Talk_To_FriendS
 Friends can be a great source of comfort. It’s important to have people you trust who will listen to you.
-> Emotional_Reflection_Quest

= Talk_To_Family
 Family can provide support that helps you through tough times. Keep leaning on them when you need to.
-> Emotional_Reflection_Quest

// Emotional Reflection Quest
= Emotional_Reflection_Quest
 The teacher asks you to reflect on how you handle emotions. Will you take a moment to think deeply, or move on?

* Reflect on my emotions and see if I need to change.
    ~ emotionalQuestCompleted = true
    -> Self_Reflection
    -> AddEdu

* I don’t think I need to change anything.
    ~ emotionalQuestCompleted = true
    -> No_Change
    -> AddGang

= Self_Reflection
 Reflecting on your emotions can help you grow and approach things differently. It’s a strong step forward.
-> END

= No_Change
 Choosing to stay the same is okay, too. Sometimes we only learn by doing things our way.
-> END

=AddEdu
~EduStat += 1
~ GangStat = MIN(GangStat,0)
->END

=AddGang
~ EduStat = MIN(EduStat,0)
~GangStat += 1
->END
