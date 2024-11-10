INCLUDE Global.ink

Understanding your strengths is important. It helps you know what you’re good at and where you can grow. What do you think your greatest strength is?

* I’m a good listener, and people trust me.
    -> Good_Listener

* I’m really good at solving problems.
    -> Problem_Solver

* I’m not sure. I don’t think I have any particular strengths.
    -> Unsure_About_Strengths

= Good_Listener
Being a good listener is a valuable skill. People need others they can rely on. How do you use that skill to help others?

* I offer advice when people need it.
    -> Offer_Advice

* I just listen, and I think it helps them feel heard.
    -> Just_Listen

= Offer_Advice
Offering advice can be helpful, but remember that sometimes people just need to be heard. Balance both approaches, and you’ll help even more.
-> END

= Just_Listen
That’s great. Sometimes listening is all someone needs. Keep being there for others, and you’ll make a real difference.
-> END

= Problem_Solver
Problem-solving is a strong skill to have. Would you like to try solving a problem I have for you?

* Yes, I’ll give it a try.
    -> Solve_Problem

* No, I don’t think I need to.
    -> Refuse_Problem

= Solve_Problem
Great! Here’s a question: If you have 15 books and you give 3 to each of your friends until you’re left with none, how many friends did you give books to?

* Answer: 5 friends.
    -> Correct_Answer

* Answer: 3 friends.
    -> Incorrect_Answer

= Correct_Answer
Well done! You’ve shown great problem-solving skills. Keep it up, and you’ll go far.
-> AddEdu
-> END

= Incorrect_Answer
Not quite, but that’s okay. Keep practicing, and you’ll get better with each problem.
-> AddEdu
-> END

= Refuse_Problem
I understand, but remember, stepping away from challenges can sometimes limit your growth. Consider trying next time.
-> AddGang
-> END

= Unsure_About_Strengths
It’s okay if you’re not sure yet. We all have strengths, even if they’re not always obvious. What do others say you’re good at?

* People say I’m reliable.
    -> Reliable

* I don’t really know. I haven’t asked.
    -> Not_Asked_Others

= Reliable
Being reliable is a fantastic strength. People need someone they can count on, and that’s you. Keep being dependable—it will take you far.
-> END

= Not_Asked_Others
Maybe it’s time to ask. Sometimes others see things in us that we don’t see in ourselves. You might be surprised by the answers.
-> END

= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0)
-> END
