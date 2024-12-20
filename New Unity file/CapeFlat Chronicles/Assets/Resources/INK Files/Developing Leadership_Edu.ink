INCLUDE Global.ink

Leadership is an important skill, even if you don’t see yourself in a formal leadership role. How do you feel about being a leader?

* I’d like to be a leader, but I’m not sure how.
    -> Want_To_Lead

* I don’t think I’m leadership material.
    -> Not_Leadership_Material

* I’ve been in leadership roles before, and I enjoyed it.
    -> Leadership_Experience

= Want_To_Lead
That’s a good start. The desire to lead is the first step. What do you think makes a good leader?

* Someone who listens and supports others.
    -> Listener_Leader

* Someone who takes charge and gets things done.
    -> Take_Charge_Leader

"If you’re interested in developing your leadership skills, here’s a challenge: Imagine you’re leading a group, and two members have conflicting ideas. How would you handle it?"

* I’d listen to both ideas and try to find a compromise.
    -> AddEdu
    Teacher: "That’s a wise approach. Leaders need to balance different perspectives."

* I’d go with the idea I believe is better and tell the other person to accept it.
    -> AddGang
    Teacher: "Sometimes decisiveness is necessary, but it’s important not to shut people out."

* I’d avoid taking sides and let them sort it out on their own.
    Teacher: "Leadership means taking responsibility. Avoiding conflict can create more issues down the line."
-> END

= Listener_Leader
Absolutely. A great leader listens and helps others grow. Focus on supporting those around you, and leadership will come naturally.
-> AddEdu
-> END

= Take_Charge_Leader
Taking charge is important, but remember that leading isn’t just about giving orders. It’s about bringing people together to achieve a goal.
-> AddEdu
-> END

= Not_Leadership_Material
Not everyone thinks of themselves as a leader, but leadership comes in many forms. Have you ever helped guide or support someone else?

* I’ve helped friends with their problems.
    -> Helping_Friends

* Not really, I usually follow others.
    -> Usually_Follow

= Helping_Friends
Helping friends is a form of leadership. You’re guiding and supporting others—that’s what leaders do. Don’t underestimate yourself.
-> AddEdu
-> END

= Usually_Follow
There’s nothing wrong with following, but leadership is something you can develop. Even small acts, like offering help, are steps toward becoming a leader.
-> AddGang
-> END

= Leadership_Experience
That’s great! What kind of leadership roles have you taken on?

* I led a project at school.
    -> Led_Project

* I helped organize an event for my community.
    -> Organized_Event

= Led_Project
Leading a school project is a big responsibility. What did you learn from that experience?

* I learned how to manage people’s different ideas.
    -> Manage_Ideas

* I learned that it’s important to keep everyone motivated.
    -> Keep_Motivated

= Manage_Ideas
Managing different ideas can be challenging, but it’s a key part of being a leader. Learning to bring people together is a valuable skill.
-> AddEdu
-> END

= Keep_Motivated
Keeping a team motivated is one of the toughest, yet most rewarding, parts of leadership. It’s great that you’re focusing on that.
-> AddEdu
-> END

= Organized_Event
Organizing an event takes a lot of planning and coordination. What part of organizing did you find the most challenging?

* Getting everyone to work together.
    -> Teamwork_Challenge

* Making sure everything went as planned.
    -> Planning_Challenge

= Teamwork_Challenge
Teamwork is at the heart of leadership. Learning how to bring people together toward a common goal is a big part of being a good leader.
-> AddEdu
-> END

= Planning_Challenge
Planning can be tough, but it’s what makes an event successful. Being detail-oriented and adaptable are key skills in leadership.
-> AddEdu
-> END

= AddEdu
~ EduStat += 1
~ GangStat = MAX(GangStat - 1, 0) // Keeps GangStat from going below zero
-> END

= AddGang
~ GangStat += 1
~ EduStat = MAX(EduStat - 1, 0) // Keeps EduStat from going below zero
-> END
