INCLUDE Global.ink

// Dialogue 29: Finding Purpose
Finding purpose can give you direction. Do you have a sense of purpose in your life?

* I want to help others.
    -> Help_Others

* I’m still figuring it out.
    -> Figuring_It_Out

* I don’t think I have a purpose.
    -> No_Purpose

// Branch: Help_Others
= Help_Others
That’s a noble purpose! Helping others can be incredibly fulfilling. Have you thought about how to pursue that?

* I’m considering volunteering.
    -> Considering_Volunteering

// Sub-Branch: Considering_Volunteering
= Considering_Volunteering
That’s a great start! It can lead to many opportunities.
-> AddEdu
-> END

// Branch: Figuring_It_Out
= Figuring_It_Out
That’s okay! Finding purpose takes time. Explore different interests to see what resonates with you.
-> END

// Branch: No_Purpose
= No_Purpose
You might be surprised! Everyone has something unique to offer. It’s worth exploring.
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
