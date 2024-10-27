INCLUDE Global.ink

// Dialogue 3: Understanding Community Importance
Community is vital for support and growth. What does community mean to you?

* It’s about helping each other.
    -> Helping_Others

* I haven’t thought much about it.
    -> Not_Thought_About_Community

* I think people are too self-centered.
    -> People_SelfCentered

// Branch: Helping_Others
= Helping_Others
Absolutely! Helping others can create a strong bond. Have you considered volunteering?

* I might be interested.
    -> Interested_Volunteering

// Sub-Branch: Interested_Volunteering
= Interested_Volunteering
Great! Volunteering can also teach you new skills and provide valuable experience.
-> AddEdu
-> END

// Branch: Not_Thought_About_Community
= Not_Thought_About_Community
That’s understandable. Community involvement can enrich your life in many ways. What if you started with small steps?
-> END

// Branch: People_SelfCentered
= People_SelfCentered
I can see why you feel that way, but many people want to help. You might be surprised by how willing others are to support you.
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
