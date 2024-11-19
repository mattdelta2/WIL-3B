INCLUDE Global.ink

// Dialogue 1: Introduction to the Community Center
Hey there! Welcome to the community center. This place is all about growth and support. How can I assist you today?

* I’m looking for activities to get involved in.
    -> Activities_Involvement

* I just need a place to hang out.
    -> Hang_Out

* I don’t think I want to do anything.
    -> Not_Interested

// Branch: Activities_Involvement
= Activities_Involvement
Aweh! Joining activities can really help you connect and grow. What interests you? We have sports, arts, and education programs.

* I’m interested in sports.
    -> Interested_Sports

* I’d like to explore arts or creative programs.
    -> Interested_Arts

* Education programs sound interesting.
    -> Interested_Education

= Interested_Sports
Great choice! Getting involved in sports helps build teamwork and confidence. You might even meet new friends who share your passion.
-> AddEdu
-> END

= Interested_Arts
Fantastic! Arts can be a great way to express yourself and discover hidden talents. We have classes in painting, music, and more.
-> AddEdu
-> END

= Interested_Education
That’s an excellent decision. Education programs here are designed to help you grow and gain new skills. Let’s set you up with something exciting.
-> AddEdu
-> END

// Branch: Hang_Out
= Hang_Out
That’s cool! You’re welcome to chill here. Sometimes, just having a safe space can make a big difference. 

* What kind of space is this?
    -> Explore_Space

* I’m just looking for a quiet spot to think.
    -> Quiet_Thinking

= Explore_Space
This is your space—a place to unwind, connect with others, or even learn something new if you’re interested.
-> END

= Quiet_Thinking
Take your time. Sometimes, a quiet moment can help you figure out your next step. You’re always welcome here.
-> END

// Branch: Not_Interested
= Not_Interested
I understand. Sometimes, it feels overwhelming. But just remember, this space is here for you, no matter what. 

* Maybe I’ll check it out later.
    -> Check_Later

* I’m really not into this kind of thing.
    -> Really_Not_Into_It

= Check_Later
No rush. When you’re ready, the community center will be here to support you.
-> AddEdu
-> END

= Really_Not_Into_It
That’s okay. Everyone moves at their own pace. Just don’t close yourself off completely—there’s always an opportunity to grow.
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
