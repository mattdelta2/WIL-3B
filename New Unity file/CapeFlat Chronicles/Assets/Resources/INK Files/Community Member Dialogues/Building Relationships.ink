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

// Sub-Branch: Networking_Benefit
= Networking_Benefit
Good for you! Networking is valuable.
-> AddEdu
-> END

// Branch: Shy_Approach
= Shy_Approach
That’s common! Starting small, like saying hi, can help you build confidence.
-> END

// Branch: No_Connection
= No_Connection
I understand. Just remember, having support can make a big difference in tough times.
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
