INCLUDE Global.ink

// Dialogue 6: Importance of Education
Education is key to success. How do you feel about your current studies?

* I enjoy learning new things.
    -> Enjoy_Learning

* School is okay, but I find it boring.
    -> School_Boring

* I don’t think education matters much.
    -> Education_Doesnt_Matter

// Branch: Enjoy Learning
= Enjoy_Learning
That’s fantastic! Learning opens up so many doors. What subjects excite you the most?

* I really enjoy science and how it explains the world.
    -> Science_Excitement

* I like creative subjects like art or music.
    -> Creative_Subjects

= Science_Excitement
Science is a great path! It can lead to exciting opportunities. Keep exploring your curiosity.
-> AddEdu
-> END

= Creative_Subjects
Creativity is a wonderful talent. Pursuing it can lead to a fulfilling career and personal growth.
-> AddEdu
-> END

// Branch: School Boring
= School_Boring
I understand that, but sometimes it’s about finding what connects with you. What subject do you tolerate the most?

* Math, even though it’s tough, feels rewarding sometimes.
    -> Tolerate_Math

* English, because it’s about stories and expression.
    -> Tolerate_English

= Tolerate_Math
Math can be tough, but it builds problem-solving skills you’ll use for life. Stick with it—you’re doing better than you think.
-> END

= Tolerate_English
Stories and expression help us understand the world better. English can teach you the power of communication.
-> END

// Branch: Education Doesn’t Matter
= Education_Doesnt_Matter
I hear you, but don’t underestimate what education can offer. It’s not just about school—it’s about building the tools for your future. Why do you feel that way?

* I don’t see how school helps with real life.
    -> School_Not_RealLife

* I just want to make money and move on.
    -> Make_Money_Move_On

= School_Not_RealLife
It might not feel like it now, but many lessons in school teach skills you’ll use later. The more you learn, the better you’ll adapt.
-> AddGang
-> END

= Make_Money_Move_On
Money is important, but without knowledge, it’s hard to keep it. Education is your safety net for the future.
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
