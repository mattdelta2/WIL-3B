 INCLUDE Global.ink
 
 
 Criticism can be hard to take, but it’s a big part of growing and improving. How do you usually handle criticism?

* I try to learn from it and improve.
    -> Learn_And_Improve

* I feel upset, even if I know it’s meant to help.
    -> Feel_Upset

* I get defensive and don’t want to hear it.
    -> Get_Defensive

= Learn_And_Improve
 That’s a healthy approach. Learning from criticism will help you grow faster. What’s one piece of criticism that helped you the most?

* I was told I needed to work on my focus.
    -> Work_On_Focus

* I was told I needed to ask for help when I need it.
    -> AskFor_Help

= Work_On_Focus
 Focus is an important skill, and working on it shows maturity. Keep at it—it’ll take you far.
-> END

= AskFor_Help
 Knowing when to ask for help is a strength, not a weakness. It takes courage to reach out, so keep practicing that.
-> END

= Feel_Upset
 Feeling upset is natural, but it’s important not to let it stop you from listening. What makes criticism feel upsetting to you?

* It feels like I’m being told I’m not good enough.
    -> NotGood_Enough

* I don’t like when people point out my flaws.
    -> Pointing_Out_Flaws

= NotGood_Enough
 Remember, criticism isn’t about your worth—it’s about helping you improve. The people who criticize often want to see you succeed.
-> END

= Pointing_Out_Flaws
 Nobody likes hearing about their flaws, but being aware of them is the first step to overcoming them. It’s all about growth.
-> END

= Get_Defensive
 It’s easy to feel defensive when someone points out what we need to work on, but try to see it as an opportunity to grow. Why do you think you react defensively?

* I don’t like admitting when I’m wrong.
    -> Dont_Like_Admitting

* I feel like people are attacking me personally.
    -> Feel_Attacked

= Dont_Like_Admitting
 It takes a lot of courage to admit when we’re wrong, but it’s also the key to getting better. Mistakes are part of learning.
-> END

= Feel_Attacked
 Criticism can feel personal, but it’s usually meant to help you improve. Try to focus on the message, not the way it makes you feel.
-> END

=AddEdu
~EduStat += 1
~GangStat -= 1
~ GangStat = MIN(GangStat,0)
->END

=AddGang
~EduStat -= 1
~ EduStat = MIN(EduStat,0)
~GangStat += 1
->END
