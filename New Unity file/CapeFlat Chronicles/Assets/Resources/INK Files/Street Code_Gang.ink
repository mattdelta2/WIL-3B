INCLUDE Global.ink

// Dialogue 12: Street Code
Jy weet mos, hier’s ‘n code wat jy moet live by on die Flats. Respect, loyalty, en hustle. Hoe’s jou code, bru?

* I live by my own code, but I respect the rules.
    -> Own_Code_Respect_Rules

* I follow no rules. I make my own.
    -> Follow_No_Rules

* I haven’t thought about the code.
    -> Havent_Thought_About_Code

// Branch: Own_Code_Respect_Rules
= Own_Code_Respect_Rules
Aweh, maar onthou, die Flats don’t care about jou code. Jy better play by die rules, anders dit gaan hard wees.

"Here’s a question: imagine jy moet choose between staying true to jou code or bending die rules to survive. What would jy do?"

* I’d stick to my code no matter what.
    -> AddEdu
     "Respect, bru. Sticking to jou code shows strength. Die streets gaan leer om jou te respect."
    -> StreetCode_TaskComplete

* I’d bend the rules if it means survival.
    -> AddGang
     "Dis practical, bru. Die Flats gaan mos nie worry oor jou code if jy nie oorleef nie."
    -> StreetCode_TaskComplete

= StreetCode_TaskComplete
 "Remember, bru, die code is nie net ‘n idea nie. It’s how jy carry yourself op die Flats."
-> END

// Branch: Follow_No_Rules
= Follow_No_Rules
Jy kan dink so, maar die streets gaan mos make jou respect die code.

* I’ll make the streets follow my rules.
    -> Streets_Follow_My_Rules

// Sub-Branch: Streets_Follow_My_Rules
= Streets_Follow_My_Rules
Ons gaan sien, bru. Die Flats gaan test jou.
-> AddGang
-> END

// Branch: Haven’t_Thought_About_Code
= Havent_Thought_About_Code
Jy moet think now. Without die code, jy gaan lose jou way.

* I’ll figure it out.
    -> Figure_Out_Code

// Sub-Branch: Figure_Out_Code
= Figure_Out_Code
Make sure jy figure dit uit quick.
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

