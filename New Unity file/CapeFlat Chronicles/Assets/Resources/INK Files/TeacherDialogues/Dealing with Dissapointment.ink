 Disappointment is something we all face at one point or another. It’s how we handle it that matters. How do you usually deal with disappointment?

* I try to move on as quickly as possible.
    -> Move_On_Quickly

* I dwell on it for a while before letting it go.
    -> Dwell_On_It

* I struggle to get over it—it lingers with me.
    -> Struggle_To_Get_Over

= Move_On_Quickly
 Moving on quickly can help you avoid being stuck in negative feelings. But it’s also important to take the time to understand why you’re disappointed, so you can learn from it.

* I guess I could take a little more time to reflect.
    -> Reflect_On_Disappointment

* I don’t like dwelling on negative things.
    -> Avoid_Negativity

= Reflect_On_Disappointment
 Reflecting doesn’t mean dwelling. It just means understanding why things didn’t work out and using that knowledge to grow. It can be powerful.
-> END

= Avoid_Negativity
 It’s good to want to avoid negativity, but sometimes facing those negative feelings head-on helps us grow. It’s about finding a balance.
-> END

= Dwell_On_It
 Dwelling on disappointment can weigh you down, but it’s normal to need some time to process it. What helps you eventually let go?

* Talking to someone about it helps.
    -> Talking_Helps

* Giving it time—it eventually fades.
    -> Time_Heals

= Talking_Helps
 Talking can be a great way to let go of disappointment. Sharing your feelings with someone you trust can make a big difference.
-> END

= Time_Heals
 Time does help heal wounds, but remember that actively working through your feelings can make the process faster and less painful.
-> END

= Struggle_To_Get_Over
 It’s okay to struggle with disappointment—it means you care deeply. The important thing is not to let it define you. What do you think makes it so hard to move on?

* I feel like I let people down.
    -> Let_People_Down

* I feel like I let myself down.
    -> Let_Myself_Down

= Let_People_Down
 Feeling like you’ve let others down is tough, but people who care about you want you to succeed and understand that setbacks happen. Don’t be too hard on yourself.
-> END

= Let_Myself_Down
 Feeling like you let yourself down can be even harder, but remember, setbacks are a part of life. What matters is how you get back up and keep going.
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
