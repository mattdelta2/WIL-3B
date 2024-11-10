INCLUDE Global.ink

Confidence isn’t something that just happens; it’s built over time. How do you feel about your confidence levels?

* I feel pretty confident in myself, most of the time.
    -> Confident_Most_Of_Time

* I struggle with confidence, especially around others.
    -> Struggle_With_Confidence

* I pretend to be confident, but I’m not sure if I really am.
    -> Fake_Confidence

= Confident_Most_Of_Time
 That’s great to hear. Confidence will take you far, especially if you keep believing in yourself. What makes you feel most confident?

* When I succeed in something I’ve worked hard at.
    -> Success_Makes_Confident

* When I get encouragement from people around me.
    -> Encouragement_Makes_Confident

= Success_Makes_Confident
 Hard work pays off, and the success that follows is well-deserved. Keep working hard, and confidence will continue to grow.
-> END

= Encouragement_Makes_Confident
 Having a good support system can work wonders for confidence. Remember to surround yourself with positive influences.
-> END

= Struggle_With_Confidence
 Struggling with confidence is normal, especially when you’re facing new challenges. What situations make you feel the least confident?

* When I have to speak in front of people.
    -> Public_Speaking

* When I’m trying something I’ve never done before.
    -> New_Experiences

 "Here’s a challenge for you: Next time you’re in a situation where you feel nervous, take a moment to breathe and remind yourself of one thing you’re good at. How do you think that would help?"

* I think it would help me feel a bit more confident.
    -> AddEdu
    Teacher: "Exactly. Reminding yourself of your strengths can give you a boost when you need it most."
    -> ConfidenceChallenge_Complete

* I’m not sure, but I could give it a try.
    -> AddEdu
    Teacher: "Trying new strategies, even small ones, can make a big difference in building confidence."
    -> ConfidenceChallenge_Complete

= Public_Speaking
 Public speaking can be nerve-wracking, but it’s a skill that can be learned over time. Practice and preparation can make all the difference.
-> END

= New_Experiences
 New experiences are always challenging, but each one helps you grow. With each new thing you try, your confidence will increase bit by bit.
 
  "Here’s a challenge for you: Next time you’re in a situation where you feel nervous, take a moment to breathe and remind yourself of one thing you’re good at. How do you think that would help?"

* I think it would help me feel a bit more confident.
    -> AddEdu
    Teacher: "Exactly. Reminding yourself of your strengths can give you a boost when you need it most."
    -> ConfidenceChallenge_Complete

* I’m not sure, but I could give it a try.
    -> AddEdu
    Teacher: "Trying new strategies, even small ones, can make a big difference in building confidence."
    -> ConfidenceChallenge_Complete

-> END

= Fake_Confidence
 Pretending to be confident can sometimes help you feel more confident, but it’s important to build true self-belief. What would help you feel more genuinely confident?

* Having more successes to show for my efforts.
    -> More_Successes

* I’m not sure, I just want to feel better about myself.
    -> Feel_Better_About_Myself

= More_Successes
 Success is a great confidence builder, but remember that failures are a part of success too. Every setback is just a step towards your next success.
-> END

= Feel_Better_About_Myself
 Confidence starts within. You have to remind yourself of your strengths and accept your weaknesses. That’s the first step toward building genuine confidence.
-> END

= ConfidenceChallenge_Complete
Teacher: "Well done. Taking small steps to remind yourself of your strengths is a great way to build confidence."
-> END

=AddEdu
~EduStat += 1
~GangStat = MIN(GangStat,0)
-> END

=AddGang
~EduStat = MIN(EduStat,0)
~GangStat += 1
-> END
