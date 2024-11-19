INCLUDE Global.ink

// Dialogue 29: Finding Purpose
Finding purpose can give you direction. Do you have a sense of purpose in your life?

* I want to help others.
    -> Help_Others

* I’m still figuring it out.
    -> Figuring_It_Out

* I don’t think I have a purpose.
    -> No_Purpose

// Branch: Help Others
= Help_Others
That’s a noble purpose! Helping others can be incredibly fulfilling. Have you thought about how to pursue that?

* I’m considering volunteering.
    -> Considering_Volunteering

* I want to inspire people through my actions.
    -> Inspire_Others

= Considering_Volunteering
That’s a great start! Volunteering can help you connect with others and make a difference in their lives.
-> AddEdu
-> END

= Inspire_Others
Leading by example is one of the best ways to inspire others. Keep striving, and you’ll motivate those around you.
-> AddEdu
-> END

// Branch: Figuring It Out
= Figuring_It_Out
That’s perfectly normal. Finding purpose is a journey, not a destination. Have you tried exploring different passions?

* I’ve thought about it but don’t know where to start.
    -> Unsure_Start

* I’ve started exploring some hobbies.
    -> Exploring_Hobbies

= Unsure_Start
Start small. Try different things that interest you, and see where they lead. You don’t have to figure it all out at once.
-> END

= Exploring_Hobbies
That’s a great step forward! Keep trying new things, and you might discover something that truly resonates with you.
-> END

// Branch: No Purpose
= No_Purpose
It might feel that way now, but everyone has something unique to offer. You just haven’t found your path yet.

* Maybe, but I feel lost most of the time.
    -> Feeling_Lost

* I don’t think I’ll ever find something meaningful.
    -> No_Hope

= Feeling_Lost
Feeling lost is part of the process. Take it one step at a time—purpose often reveals itself when you least expect it.
-> AddGang
-> END

= No_Hope
Don’t lose hope. Sometimes the biggest challenges lead to the most meaningful discoveries.
-> AddGang
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
