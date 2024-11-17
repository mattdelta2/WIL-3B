INCLUDE Global.ink

 Everyone faces challenges, and the way we deal with them defines who we are. How do you deal with difficult situations?

* I try to stay calm and think things through.
    -> Stay_Calm

* I try to ignore them and hope they go away.
    -> Ignore_Problems

* I ask for help when I need it.
    -> Ask_For_Help

= Stay_Calm
 Staying calm is a valuable skill. It allows you to think clearly. Imagine this: A friend blames you for something you didn’t do. Do you stay calm and try to resolve it, or avoid them for a while?

* I’d stay calm and talk to them.
    -> Resolve_With_Talk

* I’d avoid them until things cool down.
    -> Avoid_Them

= Resolve_With_Talk
 That’s a mature approach. Facing the issue directly shows responsibility.
-> AddEdu
-> END

= Avoid_Them
 Avoiding the problem can make it worse. Consider facing issues openly when you’re ready.
-> AddGang
-> END

= Ignore_Problems
 Ignoring problems might make them worse. Facing challenges head-on is always better in the long run. Have you tried facing your issues directly?

* I’m working on it.
    -> Working_On_It

* It’s just too much sometimes.
    -> Too_Much

= Working_On_It
 That's a good first step. Progress takes time, but it's important to keep trying.
-> END

= Too_Much
 I understand. Life can be overwhelming, but it's okay to take things one step at a time.
-> END

= Ask_For_Help
 Asking for help shows wisdom, not weakness. We all need support at times. Imagine this: You’re struggling with a project and your friend offers help. Do you accept their help or try to do it alone?

* I’d accept the help.
    -> Accept_Help

* I’d try to handle it alone.
    -> Handle_Alone

= Accept_Help
 Accepting help shows that you understand the value of collaboration.
-> AddEdu
-> END

= Handle_Alone
 Doing things alone can build independence, but remember that collaboration can make things easier.
-> AddGang
-> END

= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END

