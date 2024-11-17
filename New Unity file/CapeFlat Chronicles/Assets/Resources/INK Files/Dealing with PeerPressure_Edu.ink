INCLUDE Global.ink

Peer pressure can be tough, especially around here. How do you handle it?

* I try to stay away from people who bring me down.
    -> Stay_Away

* I don’t always handle it well, but I’m trying.
    -> Trying_To_Handle

* Sometimes, I just give in. It’s easier than resisting.
    -> Give_In

= Stay_Away
 That’s a good strategy. Surrounding yourself with positive influences can make all the difference.
-> END

= Trying_To_Handle
 That’s all anyone can ask of you. Just keep trying and don’t be afraid to seek support when you need it.
-> END

= Give_In
 I understand, but giving in won’t get you where you want to go. You have to learn to stand up for yourself, even when it’s hard.

* It’s just too difficult sometimes.
    -> Too_Difficult

* You’re right, I need to work on that.
    -> Strengthen_Resolve

= Too_Difficult
 I know it’s tough. But remember, you’re stronger than you think. You don’t have to face this alone—there are people who want to help.
-> END

= Strengthen_Resolve
 Good. Here’s a challenge for you: the next time you feel peer pressure, pause and ask yourself, "Is this choice true to who I want to become?"

- If you practice this, you’ll find that standing up for yourself gets easier over time.

->AddEdu
-> END


= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END

