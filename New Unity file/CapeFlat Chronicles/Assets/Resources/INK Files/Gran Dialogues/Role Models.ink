INCLUDE Global.ink

// Dialogue 12: Role Models
Who do you look up to these days? Be careful about the people you admire, they can shape your path. Your role models guide you more than you think. Who do you see as a role model now?

* I look up to you, Gran. You’ve taught me a lot.
    -> Look_Up_To_Gran

* I don’t really have any role models right now.
    -> No_Role_Model

* I’m still searching for someone to look up to.
    -> Searching_For_Role_Model

// Branch: Look_Up_To_Gran
= Look_Up_To_Gran
That’s sweet of you to say, but I want you to aim higher than me. I’ve done what I could, but you’re capable of so much more. What do you think I’ve taught you?

* You’ve taught me how to be strong, no matter what.
    -> Strength_Lesson

* You’ve taught me how to survive in this world.
    -> Survival_Lesson

// Sub-Branch: Strength_Lesson
= Strength_Lesson
Strength is important. It’s what keeps you standing when life knocks you down. But remember, strength isn’t just physical—it’s mental and emotional too.
-> AddEdu
-> END

// Sub-Branch: Survival_Lesson
= Survival_Lesson
Survival’s important, but you’re meant for more than just surviving. You’re here to thrive, to build something greater than what you started with.
-> END

// Branch: No_Role_Model
= No_Role_Model
That’s dangerous. Without someone to guide you, it’s easy to lose your way. Why do you think that is? Who did you used to look up to?

* I used to look up to people who had power, but now I don’t know.
    -> Admire_Power

* I’m just trying to figure things out on my own for now.
    -> Figuring_Things_Out

// Sub-Branch: Admire_Power
= Admire_Power
Power can corrupt, my child. It’s not about who has the most, but who uses what they have wisely. Be careful who you admire.
-> AddGang
-> END

// Sub-Branch: Figuring_Things_Out
= Figuring_Things_Out
That’s fine, but don’t be afraid to seek out good examples. No one gets through life without some guidance.
-> END

// Branch: Searching_For_Role_Model
= Searching_For_Role_Model
That’s understandable. Sometimes the right role model doesn’t come along right away. But when you find someone, make sure they represent the values you believe in. What are the most important values to you?

* Honesty and integrity.
    -> Honesty_Integrity

* I’m not sure. Maybe loyalty and strength.
    -> Loyalty_Strength

// Sub-Branch: Honesty_Integrity
= Honesty_Integrity
Those are good values to live by. Stick to them, and you’ll find the right people to guide you.
-> AddEdu
-> END

// Sub-Branch: Loyalty_Strength
= Loyalty_Strength
Loyalty and strength are important, but make sure they’re directed in the right way. Don’t be loyal to the wrong people, and don’t use your strength recklessly.
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
