INCLUDE Global.ink

// Dialogue: Importance of Education
Do you know why education matters? It’s not just about passing tests. It’s about building your future, giving yourself options. Do you understand that?

* I get it, miss. I’m trying to focus and learn as much as I can.
    -> I_Get_It

* Honestly, it feels like a waste of time sometimes.
    -> Waste_Of_Time

* I understand it’s important, but it’s hard to stay motivated.
    -> Hard_To_Stay_Motivated

= I_Get_It
Good. Focus will take you far. What are you enjoying most about your studies?

* Math, because it feels like it’s building a foundation for my future.
    -> MATH_QUEST_START

* I’m still figuring it out, but I’m doing my best.
    -> Unsure

// Start of the Math Focus Quest
= MATH_QUEST_START
That's the spirit! Since you’re interested in math, let’s test your skills with a quick question.

What is the answer to this: 5 + 3 x 2?

* 11
    -> Correct_Answer

* 16
    -> Incorrect_Answer

* 13
    -> Incorrect_Answer

= Correct_Answer
Well done! You’ve got a good understanding of math fundamentals. Keep practicing like this, and it will help you in many areas of life.
-> MathQuestCompleted

= Incorrect_Answer
Close, but remember the order of operations. Multiplication comes before addition, so the correct answer was 11.
-> MathQuestCompleted

= MathQuestCompleted

~ EduStat += 1
You completed the Math Focus quest and gained a deeper understanding of math. Keep up the hard work, and don’t hesitate to come back if you have more questions.
-> END

= Unsure
You don’t need to have it all figured out yet, but keep pushing forward.
-> END

= Waste_Of_Time
A waste? You think the streets will give you a better future? Where do you think you’ll end up if you don’t commit to your education?

* I guess I’ll end up like everyone else around here, stuck.
    -> Stuck

* I’m just trying to survive, miss.
    -> Survive

= Stuck
That’s exactly what will happen if you don’t change your mindset.
-> END

= Survive
Surviving isn’t enough. You have to think about what comes next.
-> END

= Hard_To_Stay_Motivated
I get that. Motivation isn’t always easy to find, but you need to push through. What’s been holding you back?

* It’s hard to see the point sometimes.
    -> Hard_To_See_Point

* I feel overwhelmed by everything.
    -> Overwhelmed

= Hard_To_See_Point
If you can’t see the point, then you need to change your perspective.
-> END

= Overwhelmed
That’s normal, but don’t let it stop you from moving forward.
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

