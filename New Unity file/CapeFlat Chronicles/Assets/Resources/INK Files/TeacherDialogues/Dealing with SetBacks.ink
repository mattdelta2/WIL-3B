 Setbacks happen to everyone, but how we react to them defines our path. How do you usually deal with setbacks?

* I try to learn from my mistakes and do better next time.
    -> Learn_From_Mistakes

* I get frustrated and give up.
    -> Give_Up

* I take some time and try again later.
    -> Take_Time

= Learn_From_Mistakes
 That’s a great mindset to have. Learning from your mistakes will only make you stronger in the future.
-> END

= Give_Up
 Giving up may feel easier, but it won’t get you anywhere. What if you tried pushing yourself just a little further each time?

* I suppose I could give it a try.
    -> Give_It_A_Try

* I don’t know if I have it in me.
    -> Doubt_Myself

= Give_It_A_Try
 That's the spirit! Even the smallest effort counts towards progress.
-> END

= Doubt_Myself
 I understand. Doubt can be powerful, but you’re capable of more than you realize. Believe in yourself.
-> END

= Take_Time
 Taking time to regroup can be wise. Sometimes, stepping away gives us the clarity we need to succeed.
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
