INCLUDE Global.ink

// Dialogue 21: Honouring Your Roots
Never forget where you come from, my child. Your roots shape who you are, but how you grow is up to you. What do your roots mean to you?

* They remind me of the struggles we’ve overcome as a family.
    -> Family_Struggles

* They make me want to leave this place and never look back.
    -> Leave_Without_Looking_Back

* I’m not sure, Gran. Sometimes I wish I wasn’t tied to them.
    -> Wish_Not_Tied

// Branch: Family Struggles
= Family_Struggles
That’s a good way to see it. Our struggles make us stronger, but they’re also a reminder of what we can achieve. What do you want to achieve for our family?

* I want to build a future where we don’t have to struggle anymore.
    -> Build_Better_Future

* I want to honour the sacrifices that brought us this far.
    -> Honour_Sacrifices

= Build_Better_Future
That’s a noble goal. Use our story as a foundation, and build something greater.
-> AddEdu
-> END

= Honour_Sacrifices
Honouring sacrifices is a beautiful way to show gratitude. Never forget the ones who came before you.
-> AddEdu
-> END

// Branch: Leave Without Looking Back
= Leave_Without_Looking_Back
I understand that feeling. But remember, you can leave without forgetting. What do you think you’ll carry with you when you go?

* The lessons you’ve taught me, Gran.
    -> Carry_Lessons

* The hope that I’ll never have to come back.
    -> Carry_Hope

= Carry_Lessons
That’s all I could ask for. Take those lessons and let them guide you wherever you go.
-> AddEdu
-> END

= Carry_Hope
Hope can be a strong motivator, but don’t let it make you bitter. Use it to inspire, not to run away.
-> AddGang
-> END

// Branch: Wish Not Tied
= Wish_Not_Tied
It’s okay to feel that way. Sometimes roots feel like chains, but they can also be anchors. What do you wish was different about your roots?

* I wish they gave me more opportunities to succeed.
    -> Wish_More_Opportunities

* I wish they didn’t hold me back so much.
    -> Wish_Not_Held_Back

= Wish_More_Opportunities
Opportunities may be limited, but they’re not impossible. You can create your own, no matter where you started.
-> AddEdu
-> END

= Wish_Not_Held_Back
Feeling held back is hard, but sometimes those roots give you strength in ways you don’t see right now. Don’t let them stop you from growing.
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
