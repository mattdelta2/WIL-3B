INCLUDE Global.ink

// Dialogue 17: Surviving or Thriving
Hier in die Flats, jy moet decide: survive, of thrive. Wat’s jou choice, bru?

* I’m aiming to thrive, not just survive.
    -> Aim_To_Thrive

* I’ll do whatever I have to in order to survive.
    -> Do_Whatever_To_Survive

* I haven’t decided what I want yet.
    -> Havent_Decided_Yet

// Branch: Aim_To_Thrive
= Aim_To_Thrive
Aweh, dis how jy moet think, maar onthou, thriving kom met risk.

* I’ll take those risks.
    -> Take_Risks_To_Thrive

* I’m just focused on surviving right now.
    -> Focused_On_Surviving

// Sub-Branch: Take_Risks_To_Thrive
= Take_Risks_To_Thrive
Good, maar die Flats gaan maak sure jy fight for dit.
-> AddEdu
-> END

// Sub-Branch: Focused_On_Surviving
= Focused_On_Surviving
Surviving is nie genoeg nie, bru. Jy gaan have to step up eventually.
-> END

// Branch: Do_Whatever_To_Survive
= Do_Whatever_To_Survive
Ja, maar onthou, jy kan lose yourself if jy only focus on surviving.

* I don’t care, as long as I make it.
    -> Dont_Care_As_Long_As_Make_It

// Sub-Branch: Don’t_Care_As_Long_As_Make_It
= Dont_Care_As_Long_As_Make_It
Ons gaan sien, maar jy gaan kry die cost of survival.
-> AddGang
-> END

// Branch: Haven’t_Decided_Yet
= Havent_Decided_Yet
Jy beter decide vinnig, bru. Die Flats gaan maak die choice for jou if jy nie.

* I’ll figure it out soon.
    -> Figure_Out_Choice

// Sub-Branch: Figure_Out_Choice
= Figure_Out_Choice
Make sure jy klaar met die decision.
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
