INCLUDE Global.ink

// Dialogue 3: Understanding Community Importance
Community is vital for support and growth. What does community mean to you?

* It’s about helping each other.
    -> Helping_Others

* I haven’t thought much about it.
    -> Not_Thought_About_Community

* I think people are too self-centered.
    -> People_SelfCentered

// Branch: Helping Others
= Helping_Others  
Absolutely! Helping others can create a strong bond. Have you ever experienced the power of community support?

* Yes, people helped me when I needed it most.
    -> Experienced_Support

* Not really. I’ve always handled things on my own.
    -> No_Experience_Support

// Sub-Branch: Experienced Support
= Experienced_Support  
That’s wonderful to hear. Paying it forward is one way to keep that cycle of support alive. Have you considered volunteering?  

* I might be interested.  
    -> Interested_Volunteering

* I’m not sure. I don’t think I have the time.  
    -> No_Time_To_Volunteer

= Interested_Volunteering  
Great! Volunteering can also teach you new skills and provide valuable experience.  
-> AddEdu  
-> END

= No_Time_To_Volunteer  
That’s understandable. Even small acts of kindness, like helping a neighbor, can make a difference.  
-> END

// Sub-Branch: No Experience Support
= No_Experience_Support  
Sometimes it’s hard to feel the value of community if you haven’t experienced it yourself. But reaching out could surprise you.  

* Maybe I’ll give it a try.  
    -> Consider_Trying_Community

* I don’t think it’s for me.  
    -> Not_For_Me

= Consider_Trying_Community  
That’s the spirit! Starting small, like participating in a local event, can help you see the benefits.  
-> AddEdu  
-> END

= Not_For_Me  
That’s okay. Community isn’t for everyone, but keep an open mind. You might find something meaningful in the future.  
-> END

// Branch: Not Thought About Community
= Not_Thought_About_Community  
That’s understandable. Community involvement can enrich your life in many ways. What if you started with small steps?

* Like what?  
    -> Small_Steps_Community

* I’m not sure I want to get involved.  
    -> No_Community_Involvement

= Small_Steps_Community  
You could start by joining a group activity or attending local events. Even saying hello to neighbors can strengthen bonds.  

* I’ll think about it.  
    -> Consider_Community

= Consider_Community  
That’s a good start. Even small connections can grow into meaningful relationships over time.  
-> AddEdu  
-> END

= No_Community_Involvement  
That’s okay. Community involvement is a personal choice. Just remember, it’s there if you ever need it.  
-> END

// Branch: People Self-Centered
= People_SelfCentered  
I can see why you feel that way. Sometimes it seems like everyone is out for themselves. What made you feel this way?  

* People have let me down before.  
    -> Let_Down_By_People

* I’ve seen how selfish people can be.  
    -> Seen_Selfishness

// Sub-Branch: Let Down By People
= Let_Down_By_People  
I’m sorry to hear that. Trust can be hard to rebuild, but not everyone is like that. Do you think you could give others another chance?  

* Maybe.  
    -> Consider_Trust

* No, I don’t think so.  
    -> No_Trust

= Consider_Trust  
That’s a brave step. Trust takes time, but the right people will prove themselves.  
-> AddEdu  
-> END

= No_Trust  
That’s okay. It’s important to protect yourself, but don’t let past experiences close you off entirely.  
-> AddGang  
-> END

// Sub-Branch: Seen Selfishness
= Seen_Selfishness  
The world can be tough, and people do act selfishly sometimes. But there are also people who genuinely care. Have you met anyone like that?  

* Yes, but they’re rare.  
    -> Rare_Kind_People

* No, I don’t think so.  
    -> No_Kind_People

= Rare_Kind_People  
Those rare people can make a huge difference. Try to keep them close and learn from their kindness.  
-> AddEdu  
-> END

= No_Kind_People  
I hope one day you meet someone who changes your mind. Kindness is out there, even if it feels hidden.  
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
