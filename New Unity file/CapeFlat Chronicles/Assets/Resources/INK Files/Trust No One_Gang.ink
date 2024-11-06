INCLUDE Global.ink

// Dialogue 4: Trust No One
On die streets, jy trust niemand nie. Jy weet mos, trust can get jou killed, bru. How you playing it?

* I’m keeping to myself, only trusting those close to me.
    -> Keeping_To_Self

* I don’t trust anyone. Everyone’s out for themselves.
    -> Dont_Trust_Anyone

* I haven’t thought about who I can trust.
    -> Havent_Thought_About_Trust

// Branch: Keeping_To_Self
= Keeping_To_Self
Ja, dis slim, maar watch out, even those jy dink is close, kan turn on jou.

* I’ll be careful.
    -> Be_Careful

* I trust people until they give me a reason not to.
    ~ trustQuestCompleted = true
    -> Start_Trust_Quest

// Sub-Branch: Be_Careful
= Be_Careful
Good. Stay wakker, anders jy gaan catch a knife in die back.
-> AddEdu
-> END

// Quest Start: Trust Quest
= Start_Trust_Quest
To prove your loyalty, go find **The Contact** in the **Alley**. Speak to them to show you understand the rules of the streets.
~ trustQuestCompleted = true
-> trustQuest_Info

// Quest Information
= trustQuest_Info
Your mission is to find **The Contact** in the **Alley** and talk to them. Completing this task will increase your **GangStat**. Avoiding the task will limit your progress with us.

* {trustQuestCompleted} Find and speak to The Contact.
    -> Complete_Trust_Quest_Success

* {trustQuestCompleted} Decide not to meet The Contact.
    -> Complete_Trust_Quest_Failure

= Complete_Trust_Quest_Success
The Contact acknowledges your loyalty. You've shown you understand the importance of trust and survival.
~ GangStat += 1
~ trustQuestCompleted = false
-> END

= Complete_Trust_Quest_Failure
By avoiding The Contact, you’ve shown hesitation. In this game, that could cost you.
~ GangStat = MAX(GangStat - 1, 0) // Decreases GangStat if quest is avoided
~ trustQuestCompleted = false
-> END

// Branch: Don’t_Trust_Anyone
= Dont_Trust_Anyone
Ja, mos. Trust gaan jou laat klaar maak. Jy moet stay sharp.

* I know. I’m always watching.
    ~ trustQuestCompleted = true
    -> Start_Trust_Quest

// Branch: Haven’t_Thought_About_Trust
= Havent_Thought_About_Trust
Jy moet think now, bru. Jy gaan find out die hard way as jy nie wake up nie.

* I’ll figure it out.
    -> Figure_Out_Trust

// Sub-Branch: Figure_Out_Trust
= Figure_Out_Trust
Better jy figure it out quick. Trust maak ‘n big difference here.
-> END

// Stat Adjustments
= AddEdu
~ EduStat += 1
~ GangStat = MIN(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END
