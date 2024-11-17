INCLUDE Global.ink

// Dialogue: Perseverance Through Hardship
Life isn’t always easy, my child. There will be times when the world feels like it’s against you. But those are the moments when you need to hold your head high. How do you deal with hardship?

* I push through no matter what.
    -> Push_Through

* Sometimes I feel like giving up, Gran.
    -> Feel_Like_Giving_Up

* I try to lean on others when things get tough.
    -> Lean_On_Others

= Push_Through
That’s the spirit. Strength comes from standing tall, even when life tries to knock you down. But don’t forget, it’s okay to ask for help when you need it. Who do you turn to when you need support?

* I talk to you, Gran. You always know what to say.
    -> Turn_To_Gran

* I rely on my friends. They keep me grounded.
    -> Turn_To_Friends

* I try to handle everything on my own.
    -> Handle_On_My_Own

= Turn_To_Gran
And I’ll always be here for you, but remember, you need to build a support system too. Life is easier when you’ve got people you can lean on.
-> AddEdu
-> END

= Turn_To_Friends
That’s good. Friends can lift you up when you’re feeling low. Just make sure they’re the kind who want to see you succeed.
-> AddEdu
-> END

= Handle_On_My_Own
I know you’re strong, but no one can carry everything alone. Letting others in doesn’t make you weak—it makes you wise.
-> AddEdu
-> END

= Feel_Like_Giving_Up
It’s natural to feel that way, but you’ve got more strength in you than you realize. When everything feels like it’s falling apart, what keeps you going?

* I think about the people who believe in me.
    -> Think_About_Support

* I focus on my goals. They remind me of what I’m working towards.
    -> Focus_On_Goals

* Sometimes I don’t know, Gran. I just keep moving.
    -> Just_Keep_Moving

= Think_About_Support
That’s a powerful motivator. The people who believe in you see something special in you. Don’t let them down, but most importantly, don’t let yourself down.
-> AddEdu
-> END

= Focus_On_Goals
That’s a strong mindset. Goals give you direction, even when the path is unclear. Keep holding onto them—they’ll guide you through the hardest times.
-> AddEdu
-> END

= Just_Keep_Moving
Sometimes that’s all you can do, and that’s okay. One step at a time, my child. Just don’t lose sight of where you’re going.
-> AddEdu
-> END

= Lean_On_Others
That’s a good approach. No one gets through life alone. Surround yourself with people who lift you up, and you’ll find the strength to carry on. Do you feel like you have the right people around you?

* Yes, I think I do. They support me when I need it.
    -> Right_People_Support

* I’m not sure. I feel like I can’t trust anyone fully.
    -> Not_Sure_About_People

* No, Gran. I feel like I’m all alone.
    -> Feel_Alone

= Right_People_Support
Then hold onto them. True friends and family are rare, and they’re worth their weight in gold.
-> AddEdu
-> END

= Not_Sure_About_People
Trust takes time to build. Start small and let people show you who they are. You’ll find the ones worth holding onto.
-> AddEdu
-> END

= Feel_Alone
You’re never truly alone, my child. I’m here, and there are people out there who will support you if you let them.
-> AddEdu
-> END



= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END