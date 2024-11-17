INCLUDE Global.ink

// Dialogue 9: Hopes and Dreams
You used to tell me about your dreams, about all the things you wanted to do. Do you still think about them, my child? What do you want for yourself now?

* I still have dreams, Gran. I’m going to make them happen.
    -> Making_Dreams_Happen

* Dreams are for people who’ve got time to waste.
    -> Dreams_Are_Waste

* I don’t think about it much anymore, Gran.
    -> Not_Thinking_About_It

// Branch: Making_Dreams_Happen
= Making_Dreams_Happen
That’s the spirit. Dreams keep us going when everything else seems impossible. What’s your biggest dream now?

* I want to get out of here, find a place where I can live without fear.
    -> Live_Without_Fear

* I don’t know exactly, but I just want something better than this.
    -> Something_Better

// Sub-Branch: Live_Without_Fear
= Live_Without_Fear
I understand. And you can do that. You’re smart, and with enough hard work, you can build a life outside these streets.
-> AddEdu
-> Reflect_On_Dreams

// Sub-Branch: Something_Better
= Something_Better
Better is good, but don’t stop there. Aim for something that makes you proud. What would that be?

* Maybe a career, something that makes a difference.
    -> Make_A_Difference

* I’m still figuring it out, Gran.
    -> Figuring_It_Out

// Follow-up: Make_A_Difference
= Make_A_Difference
That’s a wonderful goal. You can do it if you keep your focus.
-> AddEdu
-> Reflect_On_Dreams

// Follow-up: Figuring_It_Out
= Figuring_It_Out
Take your time, but keep moving forward. You’ll find your path.
-> Reflect_On_Dreams

// Branch: Dreams_Are_Waste
= Dreams_Are_Waste
Time to waste? Dreams aren’t a waste of time. They’re what give you a purpose, something to strive for. What do you think happens when you stop dreaming?

* I stop hoping for more. I just focus on surviving.
    -> Focus_On_Surviving

* I guess I stop caring about the future.
    -> Stop_Caring

// Sub-Branch: Focus_On_Surviving
= Focus_On_Surviving
Surviving is not enough. You’re worth more than just getting by. I don’t want to see you trapped in that cycle.
-> AddGang
-> Reflect_On_Dreams

// Sub-Branch: Stop_Caring
= Stop_Caring
That’s dangerous, my child. If you stop caring about the future, it slips away from you. Don’t let it.
-> Reflect_On_Dreams

// Branch: Not_Thinking_About_It
= Not_Thinking_About_It
Why not? What’s stopped you from dreaming? Did something happen to make you lose faith in your future?

* Things just feel too uncertain. I can’t plan for something that might not happen.
    -> Too_Uncertain

* Maybe I’ve just been focused on getting through the day.
    -> Getting_Through_The_Day

// Sub-Branch: Too_Uncertain
= Too_Uncertain
Life’s always uncertain, but if you don’t make a plan, someone else will make one for you. You need to take control.
-> AddGang
-> Reflect_On_Dreams

// Sub-Branch: Getting_Through_The_Day
= Getting_Through_The_Day
Getting through the day is fine, but you need to keep one eye on tomorrow. You’re building something, whether you realize it or not.

* I’ll try to start thinking more about my future.
    -> Think_More_About_Future

* I’ll take it day by day for now.
    -> Day_By_Day

// Follow-up: Think_More_About_Future
= Think_More_About_Future
Good. Focusing on the future will help you build a better life.
-> AddEdu
-> Reflect_On_Dreams

// Follow-up: Day_By_Day
= Day_By_Day
Take things at your own pace, but don’t lose sight of what’s ahead.
-> Reflect_On_Dreams

// Reflection: Updated Quest Completion
= Reflect_On_Dreams
Gran: Remember, my child, every decision you make shapes the path you’re walking. Are you building towards a better future or just trying to get by?

* I’ll focus on building a future that inspires me.
    -> Complete_Dreams_Quest_Success

* Right now, I just need to survive and see what happens next.
    -> Complete_Dreams_Quest_Failure

= Complete_Dreams_Quest_Success
You’ve chosen to nurture your dreams, seeking inspiration and a brighter future.
~ EduStat += 1

-> END

= Complete_Dreams_Quest_Failure
You’ve chosen the path of survival, focusing on immediate needs rather than aspirations.
~ GangStat += 1

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

