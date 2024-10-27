INCLUDE Global.ink


 Building strong relationships with the people around you can help you succeed in life. How do you feel about your relationships?

* I have a few close friends I can rely on.
    -> Close_Friends

* I get along with people, but I don’t have close friends.
    -> Get_Along

* I feel like I don’t really connect with others.
    -> No_Connection

= Close_Friends
 Having close friends is important. Those friendships can support you through tough times. What do you value most in your friends?

* I value their honesty.
    -> Value_Honesty

* I value how supportive they are.
    -> Value_Support

= Value_Honesty
 Honesty is a great foundation for any relationship. It builds trust, and that’s what keeps friendships strong.
-> END

= Value_Support
 Having supportive friends is truly invaluable. Remember to be that kind of support to them as well.
-> END

= Get_Along
 It’s good that you get along with people, but having deeper connections can be very fulfilling. What do you think is stopping you from forming close friendships?

* I don’t know how to open up to others.
    -> Dont_Know_How_To_Open_Up

* I haven’t found people I connect with on a deeper level.
    -> Havent_Found_Connection

= Dont_Know_How_To_Open_Up
 Opening up can be difficult, but it’s often the first step to building a deeper connection. Start small—share a little bit more each time you talk to someone you trust.
-> END

= Havent_Found_Connection
 Sometimes it takes time to find people you truly connect with. Don’t be discouraged—keep being yourself, and the right people will come into your life.
-> END

= No_Connection
 Feeling disconnected from others can be tough, but you’re not alone. What do you think makes it hard for you to connect with others?

* I feel like I’m different from everyone around me.
    -> Feel_Different

* I don’t trust people easily.
    -> Dont_Trust_Easily

= Feel_Different
 Feeling different is normal, but it can also be what makes you special. Try to find people who appreciate you for who you are, and remember that differences can be a strength.
-> END

= Dont_Trust_Easily
 Trust is hard, especially if you’ve been hurt before. Building trust takes time, and that’s okay. Start by letting people earn your trust little by little.
-> END


=AddEdu
~EduStat += 1
~GangStat -= 1
~ GangStat = MIN(GangStat,0)
->END

=AddGang
~EduStat -= 1
~ EduStat = MIN(EduStat,0)
~GangStat += 1
->END
