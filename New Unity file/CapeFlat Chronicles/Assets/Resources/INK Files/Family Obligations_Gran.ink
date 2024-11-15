INCLUDE Global.ink

// Dialogue 11: Family Obligations
You’ve got responsibilities to your family too. Don’t forget where you come from and who’s been there for you. Family is everything in this world. Have you been thinking about your role in the family?

* I’ll never forget what you’ve done for me, Gran.
    -> Never_Forget

* I’ve got to focus on myself first.
    -> Focus_On_Self

* It’s hard to balance everything, Gran.
    -> Hard_To_Balance

// Quest Activation: Triggered by choosing either "I’ll never forget" or "It’s hard to balance everything."
= familyQuest_Info
Reflecting on family responsibilities, you can choose to visit the **Family House** to embrace family obligations, increasing **EduStat**. Alternatively, visiting the **Gang Area** indicates prioritizing self and independence, increasing **GangStat**.
~ familyQuestStarted = true
-> END

// Branch: Never_Forget
= Never_Forget
I know you won’t. You’ve always been grateful. But gratitude is one thing, responsibility is another. How are you stepping up to help the family?

* I’m trying to focus on school so I can make a better life for us.
    -> Focus_On_School

* I’m doing my best to stay out of trouble, for you.
    -> Staying_Out_Of_Trouble

// Sub-Branch: Focus_On_School
= Focus_On_School
That’s the best thing you can do. Education will give you the tools to help us all. Keep going.
-> AddEdu
-> familyQuest_Info

// Sub-Branch: Staying_Out_Of_Trouble
= Staying_Out_Of_Trouble
That’s good, but staying out of trouble isn’t enough. You need to aim higher, for yourself and for us.
-> familyQuest_Info

// Branch: Focus_On_Self
= Focus_On_Self
Focusing on yourself isn’t selfish, but don’t forget that your family is part of you. If you lose sight of us, you might lose sight of yourself too. What’s pulling your focus away?

* I’m just trying to survive, Gran.
    -> Just_Surviving

* I’m trying to figure out what’s best for me right now.
    -> Figure_Out_Best

// Sub-Branch: Just_Surviving
= Just_Surviving
I understand that. But surviving isn’t enough. You need to thrive, and you can’t do that alone.
-> AddGang
-> familyQuest_Info

// Sub-Branch: Figure_Out_Best
= Figure_Out_Best
That’s important, but remember, your choices affect all of us. We’re in this together.
-> familyQuest_Info

// Branch: Hard_To_Balance
= Hard_To_Balance
It is hard. Life will always be a balancing act. But don’t let that overwhelm you. We all have our roles, and yours is important. What’s been the hardest part for you?

* Trying to focus on my own future while worrying about the family.
    -> Own_Future

* I feel like I’m not doing enough for anyone.
    -> Not_Doing_Enough

// Sub-Branch: Own_Future
= Own_Future
That’s the burden we carry, but you’re doing well. Just keep that balance in mind and don’t forget why you’re working so hard.
-> AddEdu
-> familyQuest_Info

// Sub-Branch: Not_Doing_Enough
= Not_Doing_Enough
You’re doing more than you know. But if you ever feel like you’re falling short, remember that we’re here to help you too.
-> familyQuest_Info

// Quest Completion Based on Location
*  Visit the Family House to embrace family obligations.
    -> Complete_Family_Quest_Success

*  Go to the Gang Area to prioritize independence.
    -> Complete_Family_Quest_Failure

= Complete_Family_Quest_Success
You’ve chosen to embrace your family responsibilities, recognizing the importance of those who support you.
~ EduStat += 1

-> END

= Complete_Family_Quest_Failure
You’ve chosen to focus on self-reliance and independence, accepting the risks and challenges of going it alone.
~ GangStat += 1

-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat, 0) // Ensures GangStat doesn't drop below 0
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat, 0) // Ensures EduStat doesn't drop below 0
-> END
