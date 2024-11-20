INCLUDE Global.ink

// Dialogue 16: Building Relationships
Building strong relationships is key to success. How do you connect with others?

* I try to be friendly and open.
    -> Friendly_Approach

* I’m shy and find it hard to connect.
    -> Shy_Approach

* I don’t want to connect with others.
    -> No_Connection

// Branch: Friendly_Approach
= Friendly_Approach
That’s a great approach! Being approachable can help you form meaningful connections.

* I make an effort to talk to new people.
    -> Networking_Benefit

* I focus on maintaining the connections I already have.
    -> Maintaining_Connections

= Networking_Benefit
Good for you! Networking is valuable. It helps you grow personally and professionally.
-> AddEdu
-> END

= Maintaining_Connections
That’s important, too. Strong existing connections are the foundation of a good network.
-> AddEdu
-> END

// Branch: Shy_Approach
= Shy_Approach
That’s common! Starting small, like saying hi, can help you build confidence. What’s one thing you’d like to improve?

* I’d like to feel more confident talking to others.
    -> Improve_Confidence

* I’d like to have at least one close friend I can trust.
    -> Build_Trust

= Improve_Confidence
Confidence grows with practice. Try starting conversations with small, casual topics—it gets easier over time.
-> AddEdu
-> END

= Build_Trust
Building trust takes time, but it’s worth it. Find people who share your values, and the connections will come naturally.
-> AddEdu
-> END

// Branch: No_Connection
= No_Connection
I understand. Just remember, having support can make a big difference in tough times.

* I don’t think I need anyone’s help.
    -> Independent_Approach

* Maybe I should try opening up more.
    -> Consider_Opening_Up

= Independent_Approach
It’s okay to value independence, but don’t shut people out completely. You might need support someday.
-> AddGang
-> END

= Consider_Opening_Up
That’s a good realization. Opening up takes time, but it’s a step toward building meaningful connections.
-> AddEdu
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END
