INCLUDE Global.ink

// Dialogue 2: Staying Out Late
You’ve been coming home late, and I’ve seen the people you’re with. Is this what you want for your life? You need to choose where you belong. Every night out there, you’re getting pulled deeper into something you may not escape. Tell me, why are you spending time with them?

* They’re my friends, Gran. They understand me in a way no one else does.
    -> Friends_Understand

* It’s not about them, Gran. I need to handle things my way. You wouldn’t understand.
    -> Handle_My_Way

* I’ve been feeling lost lately. That’s why I stay out.
    -> Feeling_Lost

// Branch: Friends_Understand
= Friends_Understand
Friends? True friends are hard to find. Are they really looking out for you, or are they just using you? How can you be sure they care about you?

* They’ve got my back. I trust them.
    -> Trust_Them

* I don’t know. I guess I just need to feel like I belong somewhere.
    -> Need_To_Belong

// Sub-Branch: Trust_Them
= Trust_Them
Trust is one thing, but loyalty in the streets can be a double-edged sword. What happens when they don’t need you anymore?

* I’ll cross that bridge when I get there.
    -> Cross_That_Bridge

* Maybe I should think twice about who I trust.
    -> Think_Twice

// Sub-Branch: Cross_That_Bridge
= Cross_That_Bridge
The streets can seem like a quick way, but they come with their own costs. You’re worth more than what they offer.
-> AddGang
-> END

// Sub-Branch: Think_Twice
= Think_Twice
I’m glad you’re considering it. Remember, you can belong somewhere better than the streets. Why don’t you try to find that place in something safer?

* Maybe I’ll try.
    -> Try_Safer

* I’m not ready for that yet.
    -> Not_Ready

// Sub-Branch: Try_Safer
= Try_Safer
Good. Take it one step at a time. You have potential, and there are people who can help you.
-> AddEdu
-> END

// Sub-Branch: Not_Ready
= Not_Ready
That’s alright. You don’t have to make every decision today. Just keep an open mind about where you’re headed.
-> END

// Branch: Handle_My_Way
= Handle_My_Way
You think I don’t understand? I’ve lived through this longer than you can imagine. The same streets you walk now, I walked when I was your age. What is it you think you’re handling?

* I’ve got things I need to take care of. It’s complicated.
    -> Complicated_Things

// Sub-Branch: Complicated_Things
= Complicated_Things
I know life is complicated, but you’re heading down a dangerous road. You might think you’re in control now, but you’re going to lose yourself in that chaos.

* I’ll manage. I always do.
    -> Always_Manage

* Maybe I’m not as in control as I thought.
    -> Not_In_Control

// Sub-Branch: Always_Manage
= Always_Manage
It’s too late to turn back once you’re too deep. Remember, I’m here if you want another way.
-> AddGang
-> END

// Sub-Branch: Not_In_Control
= Not_In_Control
Acknowledging that is a good start. Why not look for another way out? Something better than this path?

* You’re right. I’ll look for something better.
    -> Look_For_Better

* I’ll think about it, Gran.
    -> Think_About_It

// Sub-Branch: Look_For_Better
= Look_For_Better
That’s the right mindset. Even if it’s hard, it’ll be worth it in the end.
-> AddEdu
-> END

// Sub-Branch: Think_About_It
= Think_About_It
Take your time. Sometimes the right choice becomes clearer when you give it space.
-> END

// Branch: Feeling_Lost
= Feeling_Lost
Feeling lost is normal, my child. The world is confusing, and it’s easy to get off track. But staying out there won’t help you find yourself. What do you think will?

* Maybe I need some guidance. I don’t know what I’m doing.
    -> Need_Guidance

* I don’t know if there’s an answer for me.
    -> No_Answer

// Sub-Branch: Need_Guidance
= Need_Guidance
That’s the first step: admitting you don’t have all the answers. I’m here for you. We can figure this out together.
-> AddEdu
-> END

// Sub-Branch: No_Answer
= No_Answer
There’s always an answer, my child. It just takes time to find it. You don’t need to have it all figured out now, but you can’t give up on yourself.

* Maybe you're right. I’ll try to focus on something better.
    -> Focus_Better

* I’ll see. I’m not sure if I can yet.
    -> Not_Sure

* Maybe I’m meant to be out there. Maybe that's who I am.
    -> Meant_To_Be_There

// Sub-Branch: Focus_Better
= Focus_Better
Good choice. I believe in you, and I know you have the strength to choose a better path.
-> AddEdu
-> END

// Sub-Branch: Not_Sure
= Not_Sure
You don’t have to be certain yet. Just give yourself the chance to find a different way.
-> END

// Sub-Branch: Meant_To_Be_There
= Meant_To_Be_There
No, that’s not who you are. You weren’t born for this life, and you don’t have to let it define you. But if you keep walking this path, it’ll get harder to turn back.

* It’s too late for me.
    -> Too_Late

* I’ll think about what you said, Gran. Maybe there’s still time.
    -> Maybe_Still_Time

// Sub-Branch: Too_Late
= Too_Late
It’s never too late. Just remember, you have people who care about you. Don’t forget that.
-> AddGang
-> END

// Sub-Branch: Maybe_Still_Time
= Maybe_Still_Time
There’s always time, my child. As long as you keep moving forward, you’ll find your way.
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END
