INCLUDE Global.ink
// First dialogue: Why Education Matters
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
    -> MATH

* I’m still figuring it out, but I’m doing my best.
    -> Unsure

= MATH
 That’s the spirit. You’ll need that kind of mindset to succeed.

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
