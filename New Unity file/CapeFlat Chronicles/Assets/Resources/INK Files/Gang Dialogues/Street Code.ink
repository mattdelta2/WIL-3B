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

* I know when to follow the rules.
    -> Know_When_To_Follow_Rules

* I’m still figuring out what my code is.
    -> Figuring_Out_Code

// Sub-Branch: Know_When_To_Follow_Rules
= Know_When_To_Follow_Rules
Good, just maak sure jy ready for die game.
-> AddEdu
-> END

// Sub-Branch: Figuring_Out_Code
= Figuring_Out_Code
Jy gaan need ‘n code quick. Jy gaan klaar wees sonder daai.
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
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END
