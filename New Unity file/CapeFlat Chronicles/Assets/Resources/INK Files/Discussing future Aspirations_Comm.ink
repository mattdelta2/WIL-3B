INCLUDE Global.ink

// Dialogue 2: Discussing Future Aspirations
What are your dreams for the future? Have you thought about what you want to achieve?

* I want to finish school and go to university.
    -> University_Goal

* I just want to make money and not worry about school.
    -> Focus_Money

* I don’t really have any dreams.
    -> No_Dreams

// Branch: University Goal
= University_Goal
That’s an excellent goal! Education can open many doors. What motivates you the most about going to university?

* I want to learn more and achieve something big.
    -> Achieve_Big

* I want to make my family proud.
    -> Family_Pride

= Achieve_Big
That’s a great aspiration. Knowledge can be a powerful tool to reach your goals.
-> AddEdu
-> END

= Family_Pride
Wanting to make your family proud is a wonderful motivation. Keep striving for your dreams.
-> AddEdu
-> END

// Branch: Focus on Money
= Focus_Money
That’s a common feeling, but education can help you earn more in the long run. What’s your plan to achieve financial independence?

* I want to start my own business.
    -> Start_Business

* I’ll take any job I can get to make money quickly.
    -> Quick_Job

= Start_Business
Starting a business takes courage and planning. It can be a rewarding path if you stay committed.
-> AddEdu
-> END

= Quick_Job
Quick money can help short-term, but think about long-term stability. Planning ahead can make a big difference.
-> AddGang
-> END

// Branch: No Dreams
= No_Dreams
That’s okay. Sometimes, it takes time to figure things out. What do you think is holding you back?

* I don’t know what I’m good at.
    -> Unsure_About_Skills

* I don’t think my dreams are realistic.
    -> Dreams_Not_Realistic

= Unsure_About_Skills
It’s normal to feel unsure. Exploring your interests and trying new things can help you discover your strengths.
-> AddEdu
-> END

= Dreams_Not_Realistic
Every dream starts somewhere. Even small steps toward a big goal can make a difference.
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
