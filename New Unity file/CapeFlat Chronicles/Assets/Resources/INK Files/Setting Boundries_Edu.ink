INCLUDE Global.ink

Setting boundaries is important for your well-being, whether it’s with friends, family, or work. How do you handle setting boundaries?

* I struggle with saying no to people.
    -> Struggle_Saying_No

* I try to set boundaries, but people don’t always respect them.
    -> Boundaries_Not_Respected

* I’m pretty good at setting boundaries when I need to.
    -> Good_At_Boundaries

= Struggle_Saying_No
Saying no can be difficult, especially when you want to help others. It’s important to remember that taking care of yourself is just as important. Have you tried practicing saying no in low-stakes situations?

* I’ve tried, but it makes me feel guilty.
    -> Feel_Guilty

* No, I don’t like disappointing people.
    -> Dislike_Disappointing

= Feel_Guilty
It’s normal to feel guilty at first, but remember, setting boundaries is about respecting your own needs. You can’t pour from an empty cup.
-> END

= Dislike_Disappointing
Disappointing people can be hard, but you can’t please everyone. True friends and family will understand when you need space.
-> END

= Boundaries_Not_Respected
It can be really tough when people don’t respect your boundaries. Let’s imagine a scenario: Someone repeatedly interrupts your study time, even after you've asked for space. Would you calmly reinforce your boundary, or would you let it slide?

* I’d reinforce my boundary calmly.
    -> Reinforce_Boundary

* I’d probably let it slide to avoid conflict.
    -> Let_It_Slide

= Reinforce_Boundary
That’s great! Standing firm while staying calm shows a lot of maturity. Remember, your time and well-being are worth respecting.
-> AddEdu
-> END

= Let_It_Slide
Avoiding conflict is natural, but just remember that your needs matter too. Practicing this can help you feel more in control of your boundaries.
-> AddGang
-> END

= Good_At_Boundaries
That’s great! Being able to set boundaries is a valuable skill. What do you find most helpful when communicating your boundaries?

* Being direct and honest about what I need.
    -> Direct_Honest

* Giving reasons why I need the boundary.
    -> Give_Reasons

= Direct_Honest
Being direct and honest is the best way to communicate boundaries. It leaves little room for misunderstanding and shows you respect yourself.
-> END

= Give_Reasons
Giving reasons can help others understand why the boundary is important to you. Just remember, you don’t always owe an explanation—it’s enough that it’s your boundary.
-> END

= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END

