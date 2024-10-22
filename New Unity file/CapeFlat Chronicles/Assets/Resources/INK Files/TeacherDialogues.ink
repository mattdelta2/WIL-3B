// Declare the dialogue index variable
VAR TeacherDialogueIndex  =0

-> Teacher_dialogue_Sequence

= Teacher_dialogue_Sequence
{TeacherDialogueIndex  == 0: -> Why_Education_Matters}
 
{TeacherDialogueIndex  == 1: -> Setting_Goals}

{TeacherDialogueIndex  ==2: -> Facing_Challenges}
{TeacherDialogueIndex  == 3: -> Making_Choices}
{TeacherDialogueIndex  == 4: -> Overcoming_Challenges}
{TeacherDialogueIndex  == 5: -> Dealing_With_Setbacks}
{TeacherDialogueIndex  == 6: -> Balancing_Life_And_School}
{TeacherDialogueIndex  == 7: -> Finding_Motivation}
{TeacherDialogueIndex  == 8: -> Dealing_With_Peer_Pressure}
{TeacherDialogueIndex  == 9: -> Coping_With_Stress}
{TeacherDialogueIndex  == 10: ->Building_Confidence }
{TeacherDialogueIndex  == 11: -> Understanding_Empathy}
{TeacherDialogueIndex  == 12: -> Building_Resilience}
{TeacherDialogueIndex  == 13: -> Understanding_Emotions}
{TeacherDialogueIndex  == 14: -> Setting_Priorities}
{TeacherDialogueIndex  == 15: -> Time_Management_Skills}
{TeacherDialogueIndex  == 16: -> Handling_Criticism}
{TeacherDialogueIndex  == 17: -> Managing_Time}
{TeacherDialogueIndex  == 18: -> Understanding_Personal_Strengths}
{TeacherDialogueIndex  == 19: -> Managing_Expectations}
{TeacherDialogueIndex  == 20: -> Dealing_With_Disappointment}
{TeacherDialogueIndex  == 21: -> Building_Healthy_Habits}
{TeacherDialogueIndex  == 22: -> Developing_Leadership_Skills}
{TeacherDialogueIndex  == 23: -> Setting_Boundaries}
{TeacherDialogueIndex  == 24: -> Developing_Healthy_Habits}
{TeacherDialogueIndex  == 25: -> Building_Relationships}

// Add more checks for additional dialogues if necessary

// First dialogue: Why Education Matters
= Why_Education_Matters
Teacher: Do you know why education matters? It’s not just about passing tests. It’s about building your future, giving yourself options. Do you understand that?


* I get it, miss. I’m trying to focus and learn as much as I can.
    -> I_Get_It

* Honestly, it feels like a waste of time sometimes.
    -> Waste_Of_Time

* I understand it’s important, but it’s hard to stay motivated.
    -> Hard_To_Stay_Motivated

= I_Get_It
Teacher: Good. Focus will take you far. What are you enjoying most about your studies?

* Math, because it feels like it’s building a foundation for my future.
    -> MATH

* I’m still figuring it out, but I’m doing my best.
    -> Unsure

= MATH
Teacher: That’s the spirit. You’ll need that kind of mindset to succeed.

-> END

= Unsure
Teacher: You don’t need to have it all figured out yet, but keep pushing forward.

-> END

= Waste_Of_Time
Teacher: A waste? You think the streets will give you a better future? Where do you think you’ll end up if you don’t commit to your education?

* I guess I’ll end up like everyone else around here, stuck.
    -> Stuck

* I’m just trying to survive, miss.
    -> Survive

= Stuck
Teacher: That’s exactly what will happen if you don’t change your mindset.

-> END

= Survive
Teacher: Surviving isn’t enough. You have to think about what comes next.

-> END

= Hard_To_Stay_Motivated
Teacher: I get that. Motivation isn’t always easy to find, but you need to push through. What’s been holding you back?

* It’s hard to see the point sometimes.
    -> Hard_To_See_Point

* I feel overwhelmed by everything.
    -> Overwhelmed

= Hard_To_See_Point
Teacher: If you can’t see the point, then you need to change your perspective.

-> END

= Overwhelmed
Teacher: That’s normal, but don’t let it stop you from moving forward.


-> END




// Second dialogue: Setting Goals
= Setting_Goals
Teacher: It’s important to set goals for yourself. Without goals, you’re just drifting. Do you have any goals right now?

* I want to graduate and get a job that helps me leave this place.
    -> Graduate_Job

* I don’t really have any goals. I’m just trying to get through the day.
    -> No_Goals

= Graduate_Job
Teacher: That’s a solid goal. What kind of job are you aiming for?

* Something in engineering, maybe. I like building things.
    -> Engineering

* I’m not sure yet, but I’ll figure it out.
    -> Not_Sure_Yet

= Engineering
Teacher: That’s a great goal. Engineering can open many doors for you.
-> END

= Not_Sure_Yet
Teacher: That’s okay. What matters is that you’re thinking about the future.
-> END

= No_Goals
Teacher: That’s dangerous thinking. If you don’t have goals, you’re letting life happen to you. Why don’t you have any goals?

* I don’t see the point. Nothing ever changes here.
    -> Nothing_Changes

* It feels like setting goals won’t matter.
    -> No_Matter

= Nothing_Changes
Teacher: Nothing changes because too many people think like that. Be different.
-> END

= No_Matter
Teacher: Every goal matters. Without them, you’ll never move forward.
-> END



//3rd dialogues
= Facing_Challenges
Teacher: Life’s full of challenges. What matters is how you respond to them. Are you facing any challenges right now?

* I’m struggling with keeping up with my studies.
    -> Struggling_With_Studies

* I’m dealing with stuff outside of school. It’s hard to focus.
    -> Stuff_Outside_School

* I don’t feel like I’m good enough to succeed.
    -> Not_Good_Enough

= Struggling_With_Studies
Teacher: That’s understandable. School isn’t easy, but you have to push through. What are you struggling with the most?

* I’m having trouble with math. It’s so hard to understand.
    -> Math_Trouble

* I’m just feeling overwhelmed by everything.
    -> Feeling_Overwhelmed

= Math_Trouble
Teacher: Math can be tough, but once you break it down, it gets easier. Don’t give up.
-> END

= Feeling_Overwhelmed
Teacher: That’s a common feeling, but don’t let it paralyze you. Take things one step at a time.
-> END

= Stuff_Outside_School
Teacher: I understand that life outside of school can be tough. But remember, education is your way out. What’s distracting you?

* I’ve got friends pulling me in the wrong direction.
    -> Friends_Pulling

* I’m just trying to keep my head above water.
    -> Keep_Head_Above_Water

= Friends_Pulling
Teacher: Those kinds of friends will drag you down. You need to focus on what’s best for you.
-> END

= Keep_Head_Above_Water
Teacher: That’s all you can do sometimes, but don’t lose sight of what’s important.
-> END

= Not_Good_Enough
Teacher: That’s a dangerous mindset. You are good enough, but you need to believe that. What’s making you feel this way?

* I feel like I’m always behind everyone else.
    -> Always_Behind

* I’ve made too many mistakes to turn things around.
    -> Too_Many_Mistakes

= Always_Behind
Teacher: Everyone moves at their own pace. Don’t compare yourself to others.
-> END

= Too_Many_Mistakes
Teacher: Mistakes don’t define you. What you do after them does.
-> END


//Making Choices
= Making_Choices
Teacher: Life is full of choices, and every decision you make can affect your future. How do you decide what's the right choice?

* I weigh the pros and cons before making a decision.
    -> Weighing_Pros_Cons

* I follow my instincts, even if it’s risky.
    -> Follow_Instincts

* I don’t think much about it, I just go with the flow.
    -> Go_With_Flow

= Weighing_Pros_Cons
Teacher: That’s a wise approach. Thinking carefully helps avoid regret. Do you have any recent decisions you’re proud of?

* I decided to focus more on my studies.
    -> Focus_Studies

* I chose to spend more time helping my family.
    -> Help_Family

= Focus_Studies
Teacher: That’s great. Education can open so many opportunities if you dedicate yourself to it.
-> END

= Help_Family
Teacher: Helping family is important. Balancing your responsibilities shows maturity.
-> END

= Follow_Instincts
Teacher: Following your instincts can lead to interesting experiences, but it’s important to balance it with reason. Have you made any risky choices recently?

* Yes, and it ended up working out well.
    -> Risk_Worked

* Yes, but it didn’t turn out the way I wanted.
    -> Risk_Failed

= Risk_Worked
Teacher: Sometimes taking risks can lead to rewards. Just remember to weigh the consequences carefully.
-> END

= Risk_Failed
Teacher: It’s okay to make mistakes. We learn the most from our failures.
-> END

= Go_With_Flow
Teacher: Going with the flow is easy, but without direction, you may end up somewhere you didn’t want to be. Have you considered planning more?

* I think I should start making more plans.
    -> Start_Planning

* I’m okay with seeing where life takes me.
    -> No_Plans

= Start_Planning
Teacher: Planning doesn’t guarantee success, but it does help you stay prepared for challenges. It’s worth trying.
-> END

= No_Plans
Teacher: Just be careful that you don’t drift too far from where you want to be. A little planning can go a long way.
-> END


//Overcoming Challenges
= Overcoming_Challenges
Teacher: Everyone faces challenges, and the way we deal with them defines who we are. How do you deal with difficult situations?

* I try to stay calm and think things through.
    -> Stay_Calm

* I try to ignore them and hope they go away.
    -> Ignore_Problems

* I ask for help when I need it.
    -> Ask_For_Help

= Stay_Calm
Teacher: Staying calm is a valuable skill. It allows you to think clearly. Can you think of a recent situation where staying calm helped?

* I stayed calm during a family argument.
    -> Family_Argument

* I kept my cool when things got difficult in school.
    -> School_Difficulty

= Family_Argument
Teacher: Family can be challenging at times, but maintaining your composure shows real strength.
-> END

= School_Difficulty
Teacher: School can be overwhelming, but staying calm will help you succeed even in stressful times.
-> END

= Ignore_Problems
Teacher: Ignoring problems might make them worse. Facing challenges head-on is always better in the long run. Have you tried facing your issues directly?

* I’m working on it.
    -> Working_On_It

* It’s just too much sometimes.
    -> Too_Much

= Working_On_It
Teacher: That's a good first step. Progress takes time, but it's important to keep trying.
-> END

= Too_Much
Teacher: I understand. Life can be overwhelming, but it's okay to take things one step at a time.
-> END

= Ask_For_Help
Teacher: Asking for help shows wisdom, not weakness. We all need support at times. Who do you usually turn to?

* I turn to my friends for support.
    -> Friends_Support

* I usually ask my family for help.
    -> Family_Support

= Friends_Support
Teacher: Having friends you can rely on is a great source of strength. Don’t be afraid to lean on them when needed.
-> END

= Family_Support
Teacher: Family support can be invaluable. Always remember that seeking help when needed is a sign of strength, not weakness.
-> END


//Dealing with Setbacks
= Dealing_With_Setbacks
Teacher: Setbacks happen to everyone, but how we react to them defines our path. How do you usually deal with setbacks?

* I try to learn from my mistakes and do better next time.
    -> Learn_From_Mistakes

* I get frustrated and give up.
    -> Give_Up

* I take some time and try again later.
    -> Take_Time

= Learn_From_Mistakes
Teacher: That’s a great mindset to have. Learning from your mistakes will only make you stronger in the future.
-> END

= Give_Up
Teacher: Giving up may feel easier, but it won’t get you anywhere. What if you tried pushing yourself just a little further each time?

* I suppose I could give it a try.
    -> Give_It_A_Try

* I don’t know if I have it in me.
    -> Doubt_Myself

= Give_It_A_Try
Teacher: That's the spirit! Even the smallest effort counts towards progress.
-> END

= Doubt_Myself
Teacher: I understand. Doubt can be powerful, but you’re capable of more than you realize. Believe in yourself.
-> END

= Take_Time
Teacher: Taking time to regroup can be wise. Sometimes, stepping away gives us the clarity we need to succeed.
-> END




//Balancing life and school
= Balancing_Life_And_School
Teacher: Balancing life and school can be challenging. How do you manage everything on your plate?

* I try to make a schedule and stick to it.
    -> Make_Schedule

* I just do whatever feels right at the moment.
    -> No_Plan

* I feel like I’m constantly overwhelmed.
    -> Constantly_Overwhelmed

= Make_Schedule
Teacher: That’s a solid approach. Having a plan can keep you on track even when things get tough. Just remember to adjust if things don’t go as expected.
-> END

= No_Plan
Teacher: Living in the moment has its perks, but it can also create chaos. Setting a few goals or having a basic plan might help you find more balance.
-> END

= Constantly_Overwhelmed
Teacher: Feeling overwhelmed is normal when there’s too much on your plate. Have you tried reaching out to others for support?

* I’m not good at asking for help.
    -> Not_Ask_Help

* I guess I could give it a try.
    -> Try_Asking

= Not_Ask_Help
Teacher: I understand, but remember that everyone needs help sometimes. It’s okay to lean on others.
-> END

= Try_Asking
Teacher: That’s a great first step. Support from others can make all the difference when you’re feeling overwhelmed.
-> END



//Finding Motivation
= Finding_Motivation
Teacher: Finding motivation is tough, especially when things seem hopeless. What keeps you motivated?

* I think about my family and how much they want me to succeed.
    -> Family_Motivation

* I try to imagine a better future for myself.
    -> Future_Motivation

* Honestly, I struggle to find motivation most days.
    -> Struggle_Motivation

= Family_Motivation
Teacher: Family can be a powerful source of motivation. Keep their support close and use it to push through tough times.
-> END

= Future_Motivation
Teacher: Imagining a better future is an excellent motivator. The more you work towards it, the clearer that vision will become.
-> END

= Struggle_Motivation
Teacher: It’s okay to struggle. You’re not alone, and many people feel the same way. Have you tried setting smaller, achievable goals to get started?

* I’ve thought about it, but it feels pointless sometimes.
    -> Pointless_Goals

* Maybe I should give that a try.
    -> Give_Try

= Pointless_Goals
Teacher: It might seem pointless, but achieving even the smallest goals can give you a sense of progress. Don’t underestimate the power of small wins.
-> END

= Give_Try
Teacher: That’s the spirit. Start small, and you’ll build momentum. Even tiny steps will bring you closer to your goals.
-> END



//Dealing with peer pressure
= Dealing_With_Peer_Pressure
Teacher: Peer pressure can be tough, especially around here. How do you handle it?

* I try to stay away from people who bring me down.
    -> Stay_Away

* I don’t always handle it well, but I’m trying.
    -> Trying_To_Handle

* Sometimes, I just give in. It’s easier than resisting.
    -> Give_In

= Stay_Away
Teacher: That’s a good strategy. Surrounding yourself with positive influences can make all the difference.
-> END

= Trying_To_Handle
Teacher: That’s all anyone can ask of you. Just keep trying and don’t be afraid to seek support when you need it.
-> END

= Give_In
Teacher: I understand, but giving in won’t get you where you want to go. You have to learn to stand up for yourself, even when it’s hard.

* It’s just too difficult sometimes.
    -> Too_Difficult

* You’re right, I need to work on that.
    -> Work_On_That

= Too_Difficult
Teacher: I know it’s tough. But remember, you’re stronger than you think. You don’t have to face this alone—there are people who want to help.
-> END

= Work_On_That
Teacher: That’s the attitude. It takes time, but every little bit of resistance helps you grow stronger.
-> END





//Coping with stress
= Coping_With_Stress
Teacher: Stress is something we all have to deal with, but how you handle it can make all the difference. What do you do when you’re stressed?

* I go for a walk or exercise to clear my mind.
    -> Exercise

* I bottle it up. There’s not much else I can do.
    -> Bottle_It_Up

* I talk to my friends or family.
    -> Talk_To_Friends

= Exercise
Teacher: That’s a great way to relieve stress. Physical activity can really help you manage your emotions.
-> END

= Bottle_It_Up
Teacher: Bottling things up can be dangerous in the long run. It’s important to find healthy ways to let that stress out. Have you thought about trying something different?

* I’ve thought about it, but it’s hard to change.
    -> Hard_To_Change

* Not really. I don’t know what else to do.
    -> No_Alternatives

= Hard_To_Change
Teacher: Change is always hard, but it’s worth it. Start with small steps—you’ll get there.
-> END

= No_Alternatives
Teacher: There are always alternatives. Even something as simple as writing your thoughts down can help. It’s about finding what works for you.
-> END

= Talk_To_Friends
Teacher: Talking to someone you trust can be one of the best ways to handle stress. I’m glad you have people to support you.
-> END






//Building Confidence
= Building_Confidence
Teacher: Confidence isn’t something that just happens; it’s built over time. How do you feel about your confidence levels?

* I feel pretty confident in myself, most of the time.
    -> Confident_Most_Of_Time

* I struggle with confidence, especially around others.
    -> Struggle_With_Confidence

* I pretend to be confident, but I’m not sure if I really am.
    -> Fake_Confidence

= Confident_Most_Of_Time
Teacher: That’s great to hear. Confidence will take you far, especially if you keep believing in yourself. What makes you feel most confident?

* When I succeed in something I’ve worked hard at.
    -> Success_Makes_Confident

* When I get encouragement from people around me.
    -> Encouragement_Makes_Confident

= Success_Makes_Confident
Teacher: Hard work pays off, and the success that follows is well-deserved. Keep working hard, and confidence will continue to grow.
-> END

= Encouragement_Makes_Confident
Teacher: Having a good support system can work wonders for confidence. Remember to surround yourself with positive influences.
-> END

= Struggle_With_Confidence
Teacher: Struggling with confidence is normal, especially when you’re facing new challenges. What situations make you feel the least confident?

* When I have to speak in front of people.
    -> Public_Speaking

* When I’m trying something I’ve never done before.
    -> New_Experiences

= Public_Speaking
Teacher: Public speaking can be nerve-wracking, but it’s a skill that can be learned over time. Practice and preparation can make all the difference.
-> END

= New_Experiences
Teacher: New experiences are always challenging, but each one helps you grow. With each new thing you try, your confidence will increase bit by bit.
-> END

= Fake_Confidence
Teacher: Pretending to be confident can sometimes help you feel more confident, but it’s important to build true self-belief. What would help you feel more genuinely confident?

* Having more successes to show for my efforts.
    -> More_Successes

* I’m not sure, I just want to feel better about myself.
    -> Feel_Better_About_Myself

= More_Successes
Teacher: Success is a great confidence builder, but remember that failures are a part of success too. Every setback is just a step towards your next success.
-> END

= Feel_Better_About_Myself
Teacher: Confidence starts within. You have to remind yourself of your strengths and accept your weaknesses. That’s the first step toward building genuine confidence.
-> END




//Understanding Empathy
= Understanding_Empathy
Teacher: Empathy is about understanding what others are going through. It can be hard, but it’s a key skill in life. How empathetic do you think you are?

* I try my best to understand what others are feeling.
    -> Try_To_Understand

* I struggle to understand what people are going through sometimes.
    -> Struggle_With_Empathy

* I’m more focused on myself than others.
    -> Focused_On_Self

= Try_To_Understand
Teacher: That’s a good mindset. Being willing to try makes a big difference. When was the last time you showed empathy towards someone?

* I listened to a friend who was having a tough time.
    -> Listened_To_Friend

* I tried to help someone with their problems.
    -> Tried_To_Help

= Listened_To_Friend
Teacher: Listening can mean the world to someone in pain. You don’t always have to solve the problem—sometimes, just being there is enough.
-> END

= Tried_To_Help
Teacher: Trying to help others is admirable, but remember, sometimes listening is the best help you can give. Keep it up.
-> END

= Struggle_With_Empathy
Teacher: That’s okay, empathy doesn’t come easily to everyone. It’s something you can build with practice. What do you find most challenging about it?

* I don’t always know what to say.
    -> Not_Know_What_To_Say

* I don’t understand why people feel the way they do.
    -> Not_Understand_Why

= Not_Know_What_To_Say
Teacher: You don’t always have to say anything. Just being there and showing you care is often enough. Words aren’t always necessary.
-> END

= Not_Understand_Why
Teacher: People are complicated, and their feelings aren’t always logical. The key to empathy is to accept their feelings without needing to fully understand them.
-> END

= Focused_On_Self
Teacher: It’s natural to focus on yourself, especially when things are tough. But helping others can also help you feel better. Have you ever tried putting someone else first?

* Not really. I’m too focused on my own problems.
    -> Too_Focused_On_Self

* I guess I could try that more.
    -> Try_Putting_Others_First

= Too_Focused_On_Self
Teacher: That’s understandable. It’s hard to think about others when you’re struggling. But empathy can bring perspective and even help you solve your own problems.
-> END

= Try_Putting_Others_First
Teacher: That’s a great approach. Even small acts of kindness can make a big difference, both for others and for yourself.
-> END    







//Building Resillience
= Building_Resilience
Teacher: Life will always have setbacks. Resilience is about bouncing back even when things get tough. How do you deal with setbacks?

* I try to stay positive and keep pushing forward.
    -> Stay_Positive

* I tend to get discouraged easily.
    -> Get_Discouraged

* I focus on what I can learn from the situation.
    -> Learn_From_Situation

= Stay_Positive
Teacher: That’s a great mindset to have. Staying positive makes it easier to handle difficulties. How do you keep yourself motivated?

* I remind myself why I started in the first place.
    -> Remind_Why_Started

* I think about how good it will feel to overcome the challenge.
    -> Think_About_Reward

= Remind_Why_Started
Teacher: Remembering your reasons for starting is powerful. It keeps you focused on what’s truly important.
-> END

= Think_About_Reward
Teacher: Visualizing success is a powerful motivator. Keep that vision in mind, and you’ll find the strength to push through.
-> END

= Get_Discouraged
Teacher: It’s natural to feel discouraged sometimes. The important thing is not to stay down. What helps you get back up?

* I talk to people who encourage me.
    -> Encouraging_People

* I take a break and give myself time.
    -> Take_Break

= Encouraging_People
Teacher: Having people who lift you up is invaluable. Don’t hesitate to reach out when you need them.
-> END

= Take_Break
Teacher: Taking a break is sometimes the best thing you can do. Just remember to come back stronger.
-> END

= Learn_From_Situation
Teacher: Learning from setbacks makes you stronger. Every failure has a lesson if you look for it. What have you learned from your most recent setback?

* I learned that I need to manage my time better.
    -> Time_Management

* I learned not to be afraid of asking for help.
    -> Ask_For_HelP

= Time_Management
Teacher: Time management is a crucial skill. It’s great that you’ve identified it as an area for improvement.
-> END

= Ask_For_HelP
Teacher: Knowing when to ask for help is a sign of strength, not weakness. Remember, no one gets through life alone.
-> END




//Understanding Emotions

= Understanding_Emotions
Teacher: Understanding your emotions is important. How do you usually deal with your emotions?

* I bottle them up and try not to think about them.
    -> Bottle_Up_Emotions

* I let myself feel them, but I don’t let them control me.
    -> Feel_Emotions

* I talk about my feelings with people I trust.
    -> Talk_About_Emotions

= Bottle_Up_Emotions
Teacher: Bottling up your emotions can be harmful in the long run. It’s important to let them out in a healthy way. Have you tried expressing them differently?

* I haven’t really thought about it.
    -> Havent_Thought_About_It

* It’s hard for me to express how I feel.
    -> Hard_To_Express

= Havent_Thought_About_It
Teacher: It’s okay if you haven’t thought about it before, but consider finding a way to let those emotions out. It could make a big difference.
-> END

= Hard_To_Express
Teacher: Expressing emotions can be tough, especially if you’re not used to it. Start small—maybe write them down or talk to someone you trust.
-> END

= Feel_Emotions
Teacher: That’s a healthy approach. It’s important to acknowledge what you feel without letting it dictate your actions. What helps you stay in control?

* I take deep breaths and think things through.
    -> Deep_Breaths

* I remind myself that the feelings will pass.
    -> Feelings_Pass

= Deep_Breaths
Teacher: Breathing exercises are a great way to stay calm. They help you refocus and regain control.
-> END

= Feelings_Pass
Teacher: Reminding yourself that emotions are temporary is a powerful tool. It helps put things in perspective.
-> END

= Talk_About_Emotions
Teacher: Talking about your emotions can be very helpful. Who do you usually talk to when you’re feeling overwhelmed?

* I talk to my friends.
    -> Talk_To_FriendS

* I talk to my family.
    -> Talk_To_Family

= Talk_To_FriendS
Teacher: Friends can be a great source of comfort. It’s important to have people you trust who will listen to you.
-> END

= Talk_To_Family
Teacher: Family can provide support that helps you through tough times. Keep leaning on them when you need to.
-> END



//Setting Priorities
= Setting_Priorities
Teacher: Setting priorities is important to stay on track. How do you set your priorities?

* I focus on what’s most urgent and important.
    -> Focus_On_Urgent

* I just try to get through whatever is easiest first.
    -> Easiest_First

* I don’t really have a system for prioritizing things.
    -> No_System

= Focus_On_Urgent
Teacher: That’s a good way to stay organized. Just make sure you don’t get overwhelmed by too much urgency.
-> END

= Easiest_First
Teacher: Sometimes starting with the easiest task can get the ball rolling, but make sure you don’t neglect the important stuff.
-> END

= No_System
Teacher: It’s helpful to come up with a plan for prioritizing. Even something simple, like a to-do list, can keep you organized.
-> END




//Time Management
= Time_Management_Skills
Teacher: Managing your time well is essential, especially with everything you’re juggling. How do you usually manage your time?

* I try to make a schedule and stick to it.
    -> Schedule_And_Stick

* I just do whatever I can when I find time.
    -> Do_When_I_Can

* I often procrastinate, and things pile up.
    -> Procrastinate

= Schedule_And_Stick
Teacher: That’s a great approach. It helps you stay organized and reduces stress. What do you usually schedule first?

* Schoolwork, because it’s my top priority.
    -> Schoolwork_First

* I try to schedule a balance between school and relaxation.
    -> Balance_Between

= Schoolwork_First
Teacher: That’s a smart move. Focusing on schoolwork first means you’re giving it the importance it deserves.
-> END

= Balance_Between
Teacher: It’s important to balance responsibilities and relaxation. Taking breaks helps you stay productive in the long run.
-> END

= Do_When_I_Can
Teacher: It’s good that you’re getting things done, but planning ahead could make your life a lot easier. Have you tried setting small goals?

* I’ve tried, but it’s hard to keep up with them.
    -> Hard_To_Keep_Up

* No, but I think it might help me.
    -> Think_It_Might_Help

= Hard_To_Keep_Up
Teacher: It can be challenging, but remember, small progress is still progress. Don’t be too hard on yourself.
-> END

= Think_It_Might_Help
Teacher: That’s a great attitude. Setting achievable goals could help you create a routine that works for you.
-> END

= Procrastinate
Teacher: Procrastination is something everyone struggles with from time to time. What makes you put things off?

* I feel overwhelmed by how much there is to do.
    -> Feel_Overwhelmed

* I get easily distracted.
    -> Easily_Distracted

= Feel_Overwhelmed
Teacher: When things feel overwhelming, breaking tasks into smaller steps can make them more manageable. Have you tried that?

* Not really. It all feels like too much.
    -> Feels_Too_Much

* Yes, but it’s still hard to get started.
    -> Hard_To_Get_Started

= Feels_Too_Much
Teacher: I understand. Start small and build from there. Even completing one tiny step can help you feel more in control.
-> END

= Hard_To_Get_Started
Teacher: Getting started is often the hardest part. Try giving yourself a small reward after each task—it might help motivate you.
-> END

= Easily_Distracted
Teacher: Distractions are hard to avoid, especially with everything going on. Have you tried creating a space or time where you can focus?

* I haven’t really thought about it.
    -> Havent_Thought

* I try, but it doesn’t always work.
    -> Try_But_Hard

= Havent_Thought
Teacher: Creating a space dedicated to work or study could help. It doesn’t have to be perfect, just somewhere you feel comfortable focusing.
-> END

= Try_But_Hard
Teacher: That’s understandable. Eliminating distractions takes practice, but keep at it. Each effort makes a difference.
-> END



//Handling cristicism

= Handling_Criticism
Teacher: Criticism can be hard to take, but it’s a big part of growing and improving. How do you usually handle criticism?

* I try to learn from it and improve.
    -> Learn_And_Improve

* I feel upset, even if I know it’s meant to help.
    -> Feel_Upset

* I get defensive and don’t want to hear it.
    -> Get_Defensive

= Learn_And_Improve
Teacher: That’s a healthy approach. Learning from criticism will help you grow faster. What’s one piece of criticism that helped you the most?

* I was told I needed to work on my focus.
    -> Work_On_Focus

* I was told I needed to ask for help when I need it.
    -> AskFor_Help

= Work_On_Focus
Teacher: Focus is an important skill, and working on it shows maturity. Keep at it—it’ll take you far.
-> END

= AskFor_Help
Teacher: Knowing when to ask for help is a strength, not a weakness. It takes courage to reach out, so keep practicing that.
-> END

= Feel_Upset
Teacher: Feeling upset is natural, but it’s important not to let it stop you from listening. What makes criticism feel upsetting to you?

* It feels like I’m being told I’m not good enough.
    -> NotGood_Enough

* I don’t like when people point out my flaws.
    -> Pointing_Out_Flaws

= NotGood_Enough
Teacher: Remember, criticism isn’t about your worth—it’s about helping you improve. The people who criticize often want to see you succeed.
-> END

= Pointing_Out_Flaws
Teacher: Nobody likes hearing about their flaws, but being aware of them is the first step to overcoming them. It’s all about growth.
-> END

= Get_Defensive
Teacher: It’s easy to feel defensive when someone points out what we need to work on, but try to see it as an opportunity to grow. Why do you think you react defensively?

* I don’t like admitting when I’m wrong.
    -> Dont_Like_Admitting

* I feel like people are attacking me personally.
    -> Feel_Attacked

= Dont_Like_Admitting
Teacher: It takes a lot of courage to admit when we’re wrong, but it’s also the key to getting better. Mistakes are part of learning.
-> END

= Feel_Attacked
Teacher: Criticism can feel personal, but it’s usually meant to help you improve. Try to focus on the message, not the way it makes you feel.
-> END



//Managing Time
= Managing_Time
Teacher: Managing your time well is crucial for success. How do you usually manage your time?

* I make a schedule and try to stick to it.
    -> MakeSchedule

* I tend to procrastinate a lot.
    -> Procrastinated

* I just do things as they come, without much planning.
    -> No_Planning

= MakeSchedule
Teacher: Making a schedule is a great way to stay organized. What kind of tasks do you prioritize first?

* I focus on the most urgent tasks.
    -> Urgent_Tasks

* I like to start with smaller tasks to build momentum.
    -> Smaller_Tasks

= Urgent_Tasks
Teacher: Prioritizing urgent tasks can keep you on track, but remember not to overwhelm yourself. Balance is key.
-> END

= Smaller_Tasks
Teacher: Starting with smaller tasks can help build momentum. Just make sure you don’t leave the big ones for too long.
-> END

= Procrastinated
Teacher: Procrastination can be a tough habit to break. What do you think makes you procrastinate?

* I get overwhelmed by everything I have to do.
    -> Overwhelmed_By_Tasks

* I have trouble getting started.
    -> Trouble_Getting_Started

= Overwhelmed_By_Tasks
Teacher: Feeling overwhelmed is common, especially when tasks pile up. Breaking tasks into smaller, manageable parts can help.
-> END

= Trouble_Getting_Started
Teacher: Starting is often the hardest part, but once you get going, it gets easier. Try setting a timer for just a few minutes to get started.
-> END

= No_Planning
Teacher: Doing things as they come might feel easy at first, but it can lead to chaos. Have you thought about planning your tasks ahead of time?

* I’ve thought about it, but I find it hard to stick to plans.
    -> Hard_To_Stick_To_Plans

* I’m not really sure how to start planning.
    -> Not_Sure_How_To_Plan

= Hard_To_Stick_To_Plans
Teacher: Sticking to plans can be challenging, but the more you practice, the easier it gets. Start small and build from there.
-> END

= Not_Sure_How_To_Plan
Teacher: Planning can be as simple as making a list of what you need to do. Start with a few key tasks and add more as you go.
-> END





//Understanding Personal strength
= Understanding_Personal_Strengths
Teacher: Understanding your strengths is important. It helps you know what you’re good at and where you can grow. What do you think your greatest strength is?

* I’m a good listener, and people trust me.
    -> Good_Listener

* I’m really good at solving problems.
    -> Problem_Solver

* I’m not sure. I don’t think I have any particular strengths.
    -> Unsure_About_Strengths

= Good_Listener
Teacher: Being a good listener is a valuable skill. People need others they can rely on. How do you use that skill to help others?

* I offer advice when people need it.
    -> Offer_Advice

* I just listen, and I think it helps them feel heard.
    -> Just_Listen

= Offer_Advice
Teacher: Offering advice can be helpful, but remember that sometimes people just need to be heard. Balance both approaches, and you’ll help even more.
-> END

= Just_Listen
Teacher: That’s great. Sometimes listening is all someone needs. Keep being there for others, and you’ll make a real difference.
-> END

= Problem_Solver
Teacher: Problem-solving is a strong skill to have. Do you use it more in school, at home, or with friends?

* Mostly in school, when I have tough assignments.
    -> School_Problems

* I try to help my family solve issues when they come up.
    -> Family_Problems

= School_Problems
Teacher: Using problem-solving skills in school will take you far. Don’t shy away from the challenging assignments—they’re what help you grow.
-> END

= Family_Problems
Teacher: Helping your family with problems shows maturity and compassion. Keep being a strong support system for them.
-> END

= Unsure_About_Strengths
Teacher: It’s okay if you’re not sure yet. We all have strengths, even if they’re not always obvious. What do others say you’re good at?

* People say I’m reliable.
    -> Reliable

* I don’t really know. I haven’t asked.
    -> Not_Asked_Others

= Reliable
Teacher: Being reliable is a fantastic strength. People need someone they can count on, and that’s you. Keep being dependable—it will take you far.
-> END

= Not_Asked_Others
Teacher: Maybe it’s time to ask. Sometimes others see things in us that we don’t see in ourselves. You might be surprised by the answers.
-> END







//Managing expectations

= Managing_Expectations
Teacher: Managing expectations is important, both those you set for yourself and those others set for you. How do you feel about the expectations people have for you?

* I think they expect too much from me.
    -> Too_Much_Expectation

* I think they’re reasonable, but it’s hard to keep up.
    -> Reasonable_But_Hard

* I don’t think people expect much from me at all.
    -> Low_Expectations

= Too_Much_Expectation
Teacher: It can be overwhelming when people expect a lot from you. Have you talked to anyone about how you’re feeling?

* No, I don’t think they’d understand.
    -> Dont_Think_Understand

* I tried, but they told me I needed to work harder.
    -> Told_To_Work_Harder

= Dont_Think_Understand
Teacher: Sometimes we think people won’t understand, but they might surprise you. It’s worth trying to communicate how you’re feeling.
-> END

= Told_To_Work_Harder
Teacher: That can be tough to hear, especially when you’re already trying your best. Remember, you can only do what you’re capable of—don’t push yourself beyond your limits.
-> END

= Reasonable_But_Hard
Teacher: It’s good that you see the expectations as reasonable, even if they’re challenging. What helps you stay motivated to meet them?

* I try to focus on one thing at a time.
    -> Focus_On_One_Thing

* I remind myself why it’s important.
    -> Remind_Importance

= Focus_On_One_Thing
Teacher: Breaking things down into smaller tasks can make them more manageable. That’s a great strategy—keep it up.
-> END

= Remind_Importance
Teacher: Reminding yourself why something matters is a powerful motivator. Keeping the bigger picture in mind will help you get through the tough times.
-> END

= Low_Expectations
Teacher: When people don’t expect much, it can feel disheartening. But remember, you set your own expectations. What do you expect from yourself?

* I expect to do better than people think I can.
    -> Expect_To_Do_Better

* I’m not sure. I don’t really have expectations for myself.
    -> No_Self_Expectations

= Expect_To_Do_Better
Teacher: That’s the spirit. Defy the expectations others set for you. Show them—and yourself—what you’re capable of.
-> END

= No_Self_Expectations
Teacher: It’s important to set expectations for yourself, even if they’re small. Start by setting one simple goal and working towards it.
-> END




//Dealing with Dissapointment
= Dealing_With_Disappointment
Teacher: Disappointment is something we all face at one point or another. It’s how we handle it that matters. How do you usually deal with disappointment?

* I try to move on as quickly as possible.
    -> Move_On_Quickly

* I dwell on it for a while before letting it go.
    -> Dwell_On_It

* I struggle to get over it—it lingers with me.
    -> Struggle_To_Get_Over

= Move_On_Quickly
Teacher: Moving on quickly can help you avoid being stuck in negative feelings. But it’s also important to take the time to understand why you’re disappointed, so you can learn from it.

* I guess I could take a little more time to reflect.
    -> Reflect_On_Disappointment

* I don’t like dwelling on negative things.
    -> Avoid_Negativity

= Reflect_On_Disappointment
Teacher: Reflecting doesn’t mean dwelling. It just means understanding why things didn’t work out and using that knowledge to grow. It can be powerful.
-> END

= Avoid_Negativity
Teacher: It’s good to want to avoid negativity, but sometimes facing those negative feelings head-on helps us grow. It’s about finding a balance.
-> END

= Dwell_On_It
Teacher: Dwelling on disappointment can weigh you down, but it’s normal to need some time to process it. What helps you eventually let go?

* Talking to someone about it helps.
    -> Talking_Helps

* Giving it time—it eventually fades.
    -> Time_Heals

= Talking_Helps
Teacher: Talking can be a great way to let go of disappointment. Sharing your feelings with someone you trust can make a big difference.
-> END

= Time_Heals
Teacher: Time does help heal wounds, but remember that actively working through your feelings can make the process faster and less painful.
-> END

= Struggle_To_Get_Over
Teacher: It’s okay to struggle with disappointment—it means you care deeply. The important thing is not to let it define you. What do you think makes it so hard to move on?

* I feel like I let people down.
    -> Let_People_Down

* I feel like I let myself down.
    -> Let_Myself_Down

= Let_People_Down
Teacher: Feeling like you’ve let others down is tough, but people who care about you want you to succeed and understand that setbacks happen. Don’t be too hard on yourself.
-> END

= Let_Myself_Down
Teacher: Feeling like you let yourself down can be even harder, but remember, setbacks are a part of life. What matters is how you get back up and keep going.
-> END




//Building healthy habbites
= Building_Healthy_Habits
Teacher: Building healthy habits is key to success. What are some habits you’re working on?

* I’m trying to get better at managing my time.
    -> Time_Management_Habit

* I’m trying to exercise more regularly.
    -> Exercise_Habit

* I’m not really working on any habits right now.
    -> No_Current_Habits

= Time_Management_Habit
Teacher: That’s a great habit to build. Time management helps you achieve more without feeling overwhelmed. How are you working on it?

* I’m using a planner to schedule my day.
    -> Using_Planner

* I’m setting small, daily goals for myself.
    -> Setting_Daily_Goals

= Using_Planner
Teacher: A planner is an excellent tool. It keeps you organized and accountable. Keep at it, and you’ll see improvements.
-> END

= Setting_Daily_Goals
Teacher: Setting daily goals is a great way to stay on track. Small wins every day add up to big achievements.
-> END

= Exercise_Habit
Teacher: Exercise is a wonderful habit. It keeps you healthy and also helps manage stress. What kind of exercise are you focusing on?

* I’m trying to go for a run every day.
    -> Running_Every_Day

* I’m doing some simple workouts at home.
    -> Home_Workouts

= Running_Every_Day
Teacher: Running is a great way to stay fit. It’s tough at first, but the more you stick to it, the easier it will get. Keep pushing yourself.
-> END

= Home_Workouts
Teacher: Home workouts are perfect when you don’t have time for the gym. Consistency is what matters most—keep going!
-> END

= No_Current_Habits
Teacher: That’s okay, but building healthy habits can really make life easier. Is there anything you’d like to work on?

* I’d like to eat healthier.
    -> Eating_Healthier

* I’d like to get more sleep.
    -> More_Sleep

= Eating_Healthier
Teacher: Eating healthier can make a big difference in how you feel. Start small—maybe add more fruits and vegetables to your meals. Every step counts.
-> END

= More_Sleep
Teacher: Sleep is crucial for your health and well-being. Try setting a bedtime and sticking to it—it will help you feel more rested.
-> END


//Developing leadership
= Developing_Leadership_Skills
Teacher: Leadership is an important skill, even if you don’t see yourself in a formal leadership role. How do you feel about being a leader?

* I’d like to be a leader, but I’m not sure how.
    -> Want_To_Lead

* I don’t think I’m leadership material.
    -> Not_Leadership_Material

* I’ve been in leadership roles before, and I enjoyed it.
    -> Leadership_Experience

= Want_To_Lead
Teacher: That’s a good start. The desire to lead is the first step. What do you think makes a good leader?

* Someone who listens and supports others.
    -> Listener_Leader

* Someone who takes charge and gets things done.
    -> Take_Charge_Leader

= Listener_Leader
Teacher: Absolutely. A great leader listens and helps others grow. Focus on supporting those around you, and leadership will come naturally.
-> END

= Take_Charge_Leader
Teacher: Taking charge is important, but remember that leading isn’t just about giving orders. It’s about bringing people together to achieve a goal.
-> END

= Not_Leadership_Material
Teacher: Not everyone thinks of themselves as a leader, but leadership comes in many forms. Have you ever helped guide or support someone else?

* I’ve helped friends with their problems.
    -> Helping_Friends

* Not really, I usually follow others.
    -> Usually_Follow

= Helping_Friends
Teacher: Helping friends is a form of leadership. You’re guiding and supporting others—that’s what leaders do. Don’t underestimate yourself.
-> END

= Usually_Follow
Teacher: There’s nothing wrong with following, but leadership is something you can develop. Even small acts, like offering help, are steps toward becoming a leader.
-> END

= Leadership_Experience
Teacher: That’s great! What kind of leadership roles have you taken on?

* I led a project at school.
    -> Led_Project

* I helped organize an event for my community.
    -> Organized_Event

= Led_Project
Teacher: Leading a school project is a big responsibility. What did you learn from that experience?

* I learned how to manage people’s different ideas.
    -> Manage_Ideas

* I learned that it’s important to keep everyone motivated.
    -> Keep_Motivated

= Manage_Ideas
Teacher: Managing different ideas can be challenging, but it’s a key part of being a leader. Learning to bring people together is a valuable skill.
-> END

= Keep_Motivated
Teacher: Keeping a team motivated is one of the toughest, yet most rewarding, parts of leadership. It’s great that you’re focusing on that.
-> END

= Organized_Event
Teacher: Organizing an event takes a lot of planning and coordination. What part of organizing did you find the most challenging?

* Getting everyone to work together.
    -> Teamwork_Challenge

* Making sure everything went as planned.
    -> Planning_Challenge

= Teamwork_Challenge
Teacher: Teamwork is at the heart of leadership. Learning how to bring people together toward a common goal is a big part of being a good leader.
-> END

= Planning_Challenge
Teacher: Planning can be tough, but it’s what makes an event successful. Being detail-oriented and adaptable are key skills in leadership.
-> END





//setting boundaries
= Setting_Boundaries
Teacher: Setting boundaries is important for your well-being, whether it’s with friends, family, or work. How do you handle setting boundaries?

* I struggle with saying no to people.
    -> Struggle_Saying_No

* I try to set boundaries, but people don’t always respect them.
    -> Boundaries_Not_Respected

* I’m pretty good at setting boundaries when I need to.
    -> Good_At_Boundaries

= Struggle_Saying_No
Teacher: Saying no can be difficult, especially when you want to help others. It’s important to remember that taking care of yourself is just as important. Have you tried practicing saying no in low-stakes situations?

* I’ve tried, but it makes me feel guilty.
    -> Feel_Guilty

* No, I don’t like disappointing people.
    -> Dislike_Disappointing

= Feel_Guilty
Teacher: It’s normal to feel guilty at first, but remember, setting boundaries is about respecting your own needs. You can’t pour from an empty cup.
-> END

= Dislike_Disappointing
Teacher: Disappointing people can be hard, but you can’t please everyone. True friends and family will understand when you need space.
-> END

= Boundaries_Not_Respected
Teacher: It can be really tough when people don’t respect your boundaries. Have you talked to them about how important those boundaries are to you?

* I’ve tried, but they don’t seem to listen.
    -> Tried_Talk_No_Listen

* No, I’m worried about how they’ll react.
    -> Worried_About_Reaction

= Tried_Talk_No_Listen
Teacher: Sometimes, people need time to adjust. Keep reinforcing your boundaries calmly and consistently. You deserve to have your needs respected.
-> END

= Worried_About_Reaction
Teacher: It’s understandable to worry about their reaction, but your well-being is important. You can start small—set a minor boundary and see how it goes.
-> END

= Good_At_Boundaries
Teacher: That’s great! Being able to set boundaries is a valuable skill. What do you find most helpful when communicating your boundaries?

* Being direct and honest about what I need.
    -> Direct_Honest

* Giving reasons why I need the boundary.
    -> Give_Reasons

= Direct_Honest
Teacher: Being direct and honest is the best way to communicate boundaries. It leaves little room for misunderstanding and shows you respect yourself.
-> END

= Give_Reasons
Teacher: Giving reasons can help others understand why the boundary is important to you. Just remember, you don’t always owe an explanation—it’s enough that it’s your boundary.
-> END



//Developing Healthy Habits
= Developing_Healthy_Habits
Teacher: Developing healthy habits can make a big difference in your daily life. What habits are you trying to develop?

* I’m trying to exercise regularly.
    -> Exercise_Regularly

* I’m trying to eat healthier.
    -> Eat_Healthier

* I want to get better at managing my time.
    -> Manage_Time_Better

= Exercise_Regularly
Teacher: Regular exercise can do wonders for both your physical and mental health. What kind of exercise do you enjoy the most?

* I like going for runs.
    -> Like_Running

* I prefer team sports.
    -> Team_Sports

* I’m not sure, I just want to stay active.
    -> Stay_Active

= Like_Running
Teacher: Running is a great way to stay fit, and it can really clear your mind. Keep at it, and remember to pace yourself.
-> END

= Team_Sports
Teacher: Team sports are a fantastic way to stay active and build connections with others. It’s great that you’re combining fitness with social interaction.
-> END

= Stay_Active
Teacher: Staying active is a great goal, whether it’s structured exercise or just moving more during the day. The important part is to keep moving.
-> END

= Eat_Healthier
Teacher: Eating healthier is an important habit. It’s all about making small, sustainable changes. What are you focusing on with your diet?

* I’m trying to eat more fruits and vegetables.
    -> More_Fruits_Vegetables

* I’m cutting back on junk food.
    -> Less_Junk_Food

* I want to drink more water.
    -> More_Water

= More_Fruits_Vegetables
Teacher: That’s a great step. Adding more fruits and vegetables to your diet gives your body the nutrients it needs to feel its best.
-> END

= Less_Junk_Food
Teacher: Cutting back on junk food can be tough, but it makes a big difference. Take it one day at a time, and remember, balance is key.
-> END

= More_Water
Teacher: Drinking more water is one of the simplest ways to improve your health. Keep a water bottle with you as a reminder.
-> END

= Manage_Time_Better
Teacher: Managing time well is a habit that can reduce stress and make life feel more under control. How are you working on improving it?

* I’m trying to use a planner to keep track of my tasks.
    -> Use_Planner

* I want to stop procrastinating.
    -> Stop_Procrastinating

= Use_Planner
Teacher: Using a planner is a great way to stay organized. It helps you see what needs to be done and plan your time accordingly. Keep using it consistently, and it will become second nature.
-> END

= Stop_Procrastinating
Teacher: Procrastination is something we all struggle with. Start by tackling small tasks first—they build momentum and help you move forward.
-> END





//Building Relationships
= Building_Relationships
Teacher: Building strong relationships with the people around you can help you succeed in life. How do you feel about your relationships?

* I have a few close friends I can rely on.
    -> Close_Friends

* I get along with people, but I don’t have close friends.
    -> Get_Along

* I feel like I don’t really connect with others.
    -> No_Connection

= Close_Friends
Teacher: Having close friends is important. Those friendships can support you through tough times. What do you value most in your friends?

* I value their honesty.
    -> Value_Honesty

* I value how supportive they are.
    -> Value_Support

= Value_Honesty
Teacher: Honesty is a great foundation for any relationship. It builds trust, and that’s what keeps friendships strong.
-> END

= Value_Support
Teacher: Having supportive friends is truly invaluable. Remember to be that kind of support to them as well.
-> END

= Get_Along
Teacher: It’s good that you get along with people, but having deeper connections can be very fulfilling. What do you think is stopping you from forming close friendships?

* I don’t know how to open up to others.
    -> Dont_Know_How_To_Open_Up

* I haven’t found people I connect with on a deeper level.
    -> Havent_Found_Connection

= Dont_Know_How_To_Open_Up
Teacher: Opening up can be difficult, but it’s often the first step to building a deeper connection. Start small—share a little bit more each time you talk to someone you trust.
-> END

= Havent_Found_Connection
Teacher: Sometimes it takes time to find people you truly connect with. Don’t be discouraged—keep being yourself, and the right people will come into your life.
-> END

= No_Connection
Teacher: Feeling disconnected from others can be tough, but you’re not alone. What do you think makes it hard for you to connect with others?

* I feel like I’m different from everyone around me.
    -> Feel_Different

* I don’t trust people easily.
    -> Dont_Trust_Easily

= Feel_Different
Teacher: Feeling different is normal, but it can also be what makes you special. Try to find people who appreciate you for who you are, and remember that differences can be a strength.
-> END

= Dont_Trust_Easily
Teacher: Trust is hard, especially if you’ve been hurt before. Building trust takes time, and that’s okay. Start by letting people earn your trust little by little.
-> END







//Managaing Conflicts
= Managing_Conflicts
Teacher: Conflict is a part of life, but how you manage it can make all the difference. How do you usually deal with conflicts?

* I try to talk it out calmly.
    -> Talk_It_Out

* I avoid conflict as much as possible.
    -> Avoid_Conflict

* I get defensive and argue.
    -> Get_Defensive_

= Talk_It_Out
Teacher: Talking things out calmly is a mature approach. It shows respect for the other person’s perspective. How do you usually start those conversations?

* I listen first, then share my thoughts.
    -> Listen_First

* I make sure they understand my side right away.
    -> Explain_My_Side

= Listen_First
Teacher: Listening is one of the most important parts of resolving conflict. It shows that you care about what the other person has to say.
-> END

= Explain_My_Side
Teacher: It’s good to express your perspective, but remember to balance it with listening. It helps create mutual understanding.
-> END

= Avoid_Conflict
Teacher: Avoiding conflict can keep things calm in the short term, but sometimes issues need to be addressed. What makes you want to avoid conflicts?

* I don’t want to make things worse.
    -> Dont_Make_Things_Worse

* I feel uncomfortable confronting others.
    -> Uncomfortable_Confrontation

= Dont_Make_Things_Worse
Teacher: That’s understandable. But sometimes avoiding issues can make them worse over time. Try to find a way to address the problem without escalating it.
-> END

= Uncomfortable_Confrontation
Teacher: Confrontation can be uncomfortable, but it’s an important skill. It’s okay to be nervous—start small and build your confidence in addressing issues.
-> END

= Get_Defensive_
Teacher: It’s easy to get defensive, especially when you feel attacked. What makes you feel defensive in conflicts?

* I feel like the other person is blaming me.
    -> Feel_Blamed

* I don’t like being wrong.
    -> Dont_Like_Being_Wrong

= Feel_Blamed
Teacher: Feeling blamed can trigger defensiveness, but try to focus on the issue instead of the emotions. It helps to separate the problem from yourself.
-> END

= Dont_Like_Being_Wrong
Teacher: Nobody likes being wrong, but admitting when you’re wrong is a sign of strength. It shows you’re willing to learn and grow.
-> END



