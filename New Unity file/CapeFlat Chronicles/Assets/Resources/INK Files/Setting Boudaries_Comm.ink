INCLUDE Global.ink

// Dialogue 19: Setting Boundaries
Setting boundaries is important for mental health. Do you feel comfortable saying no?

* I’ve learned to say no when I need to.
    -> Learned_To_Say_No

* I struggle to say no.
    -> Struggle_With_No

* I don’t think about boundaries.
    -> No_Thoughts_On_Boundaries

// Branch: Learned To Say No
= Learned_To_Say_No
That’s excellent! Knowing your limits can protect your well-being. What’s an example of a boundary you’ve set?

* I stopped going to parties that made me uncomfortable.
    -> Stopped_Going_To_Parties

* I made it clear to my friends when I needed space.
    -> Need_Space

= Stopped_Going_To_Parties
Great decision! Prioritizing your comfort is essential.
-> AddEdu
-> END

= Need_Space
That’s a mature approach. Being honest about your needs is key to healthy relationships.
-> AddEdu
-> END

// Branch: Struggle With No
= Struggle_With_No
That’s understandable. It’s important to practice assertiveness. Start small and build your confidence. What makes it hard for you to say no?

* I don’t want to disappoint people.
    -> Fear_Disappointing

* I’m scared of confrontation.
    -> Fear_Confrontation

= Fear_Disappointing
It’s hard to balance others’ expectations with your own needs, but saying no doesn’t mean you don’t care.
-> END

= Fear_Confrontation
Confrontation can be intimidating, but setting boundaries doesn’t have to be a fight. It’s about mutual respect.
-> END

// Branch: No Thoughts On Boundaries
= No_Thoughts_On_Boundaries
Boundaries are crucial for healthy relationships. Consider what you need to feel safe and respected. What’s stopping you from setting boundaries?

* I don’t know where to start.
    -> Don’t_Know_Start

* I feel like I don’t deserve boundaries.
    -> Feel_Undeserving

= Don’t_Know_Start
Start with small steps, like identifying situations where you feel uncomfortable. From there, communicate your needs clearly.
-> AddEdu
-> END

= Feel_Undeserving
Everyone deserves respect, including you. Setting boundaries is about valuing yourself as much as you value others.
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
