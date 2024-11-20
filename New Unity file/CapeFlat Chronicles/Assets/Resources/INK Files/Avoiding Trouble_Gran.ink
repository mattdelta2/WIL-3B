INCLUDE Global.ink

// Dialogue 6: Avoiding Trouble
The Flats can be dangerous, my child. I’ve seen too many people get caught up in things they can’t escape from. Trouble comes quick and without warning. You think you’re staying out of it?

* Yes, Gran. I’m keeping my head down, staying out of trouble.
    -> Staying_Out_Of_Trouble

* Trouble finds me, Gran. It’s not my fault.
    -> Trouble_Finds_Me

* I’m just trying to make it through each day.
    -> Just_Making_It_Through

// Branch: Staying_Out_Of_Trouble
= Staying_Out_Of_Trouble
That’s good to hear. But trouble doesn’t always come when you expect it. Sometimes it sneaks up on you. Are you prepared for that?

* I try to avoid the wrong people and stay focused on what I need to do.
    -> Avoiding_Wrong_People

* I’m careful, but it’s not easy to stay out of the way.
    -> Careful_But_Hard

= Avoiding_Wrong_People
That’s wise. Keep your distance from those who bring nothing but chaos. You’re too good for that life.
You feel reassured knowing you’re making decisions to protect yourself.
-> AddEdu
-> END

= Careful_But_Hard
No, it’s not easy. But nothing worth doing is. Just remember, every decision has a consequence, even the small ones.

* I know, I’ll keep that in mind.
    -> Keep_In_Mind

* Yeah, but sometimes it feels like I can’t control anything.
    -> Feels_Out_Of_Control

= Keep_In_Mind
Good. It’s important to stay mindful.
Your focus will guide you through tough situations.
-> AddEdu
-> END

= Feels_Out_Of_Control
It’s hard when things feel beyond your control, but your choices still matter. Take it one step at a time.
-> END

// Branch: Trouble_Finds_Me
= Trouble_Finds_Me
It might not be your fault, but how you respond to it is your choice. When trouble finds you, what do you do? Do you fight back or walk away?

* I fight back. I can’t let people walk all over me.
    -> Fight_Back

* I try to walk away, but sometimes it’s hard.
    -> Walk_Away

= Fight_Back
I understand the instinct to defend yourself, but not every fight is worth fighting. Some battles leave scars you can’t heal from.

* I can take care of myself, Gran.
    -> Take_Care_Of_Myself

* Maybe I should be more careful.
    -> Should_Be_Careful

= Take_Care_Of_Myself
That’s true, but sometimes that confidence can lead you into more trouble. Don’t let pride cloud your judgment.
-> AddGang
-> END

= Should_Be_Careful
Being cautious is a strength. Keep working on that. You’re taking a step in the right direction.
-> END

= Walk_Away
Walking away is never easy. It takes more strength to avoid a fight than to start one. Keep working on that.

* I’ll try, Gran.
    -> Try_Walk_Away

* I’ll see. Sometimes you can’t avoid it.
    -> Cant_Avoid

= Try_Walk_Away
Good. That’s the best approach, even when it’s hard. You’re showing real courage.
-> AddEdu
-> END

= Cant_Avoid
I understand. Just remember to pick your battles wisely. Not all fights are worth the cost.
-> END

// Branch: Just_Making_It_Through
= Just_Making_It_Through
That’s all any of us can do. But the choices you make each day will decide where you end up. What’s your plan for making it through?

* I’m staying low, keeping to myself.
    -> Keeping_To_Myself

* I’m playing it by ear, seeing how things go.
    -> Playing_By_Ear

= Keeping_To_Myself
Keeping to yourself is good, but don’t isolate yourself too much. You need a support system to keep you strong.

* I’ll stay close to those who care about me.
    -> Stay_Close_To_Care

* I don’t need anyone else.
    -> Dont_Need_Anyone

= Stay_Close_To_Care
Good. Those who care about you are worth holding on to. Their support will help you grow stronger.
-> AddEdu
-> END

= Dont_Need_Anyone
Sometimes we all need support, even if we don’t realize it. Be careful not to push others away.
-> AddGang
-> END

= Playing_By_Ear
Be careful with that approach. Life might take you places you never intended to go if you don’t have a plan.

* Maybe I need to rethink my strategy.
    -> Rethink_Strategy

* I’ll figure it out eventually.
    -> Figure_It_Out_Eventually

= Rethink_Strategy
It’s good to plan ahead. A clear path can keep you out of trouble. Your careful planning is a step toward a better future.
-> AddEdu
-> END

= Figure_It_Out_Eventually
Just remember, the longer you drift, the harder it is to steer back. Don’t wait too long to take control.
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
