INCLUDE Global.ink

// Dialogue 22: Forgiveness
Forgiveness is one of the hardest things to give, but it can free you from so much pain. Have you thought about what forgiveness means to you?

* Forgiveness is about letting go and finding peace.
    -> Forgiveness_Peace

* Forgiveness is hard. Some things feel unforgivable.
    -> Forgiveness_Hard

* I don’t know, Gran. I think it’s easier to just move on without forgiving.
    -> Move_On_Without_Forgiving

// Branch: Forgiveness Peace
= Forgiveness_Peace
That’s right. Forgiveness isn’t for the person who hurt you; it’s for yourself. Is there someone you need to forgive?

* Yes, and I’m working on it.
    -> Working_On_Forgiveness

* No, I don’t think so.
    -> No_Forgiveness_Needed

= Working_On_Forgiveness
That’s a brave step, my child. It’s not easy, but every bit of effort brings you closer to peace.
-> AddEdu
-> END

= No_Forgiveness_Needed
Even if you don’t see it now, one day you might. Keep your heart open to the possibility.
-> AddEdu
-> END

// Branch: Forgiveness Hard
= Forgiveness_Hard
Some things do feel unforgivable. But holding on to that anger can weigh you down. What makes it so hard for you to forgive?

* I’m afraid forgiving them means what they did was okay.
    -> Forgiving_Is_OK

* I don’t want to let go of the pain. It feels like a shield.
    -> Pain_As_Shield

= Forgiving_Is_OK
Forgiving doesn’t mean forgetting, and it doesn’t excuse their actions. It just means you’re choosing to free yourself from their hold.
-> AddEdu
-> END

= Pain_As_Shield
Pain can feel like protection, but it’s really a prison. Letting go doesn’t make you weak—it sets you free.
-> AddGang
-> END

// Branch: Move On Without Forgiving
= Move_On_Without_Forgiving
Moving on without forgiving can leave scars you don’t see. Have you ever felt those scars holding you back?

* Maybe. Sometimes I feel like I can’t fully move forward.
    -> Can_Not_Move_Forward

* No, I think I’m fine without forgiving.
    -> Fine_Without_Forgiving

= Can_Not_Move_Forward
That’s the thing about holding on—it keeps you tied to the past. Letting go can lighten your heart, my child.
-> AddEdu
-> END

= Fine_Without_Forgiving
You say that now, but don’t let your bitterness build up over time. It can harden your heart in ways you don’t realize.
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
