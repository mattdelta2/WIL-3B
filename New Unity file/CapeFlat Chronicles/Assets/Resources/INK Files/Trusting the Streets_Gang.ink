INCLUDE Global.ink

// Dialogue 27: Trusting the Streets
Hier op die Flats, bru, jy kan niks trust nie, maar jy moet still navigate die life. How jy maak jou way deur dit alles?

* I trust no one, but I keep my eyes open.
    -> Trust_No_One_Eyes_Open

* I trust no one and I don’t care who knows it.
    -> No_Trust_No_Care

* I haven’t figured out who’s trustworthy yet.
    -> Havent_Figured_Trust

// Branch: Trust_No_One_Eyes_Open
= Trust_No_One_Eyes_Open
Aweh, dis ‘n goeie move, maar jy moet always expect die unexpected.

 "Here’s a test of jou street sense: imagine jy’re meeting someone who could help you out, but they might not be trustworthy. How jy gaan handle dit?"

* I’d keep my distance but hear them out.
    -> AddEdu
     "Slim move, bru. Daai’s hoe jy survive op die Flats."
    -> Trust_Test_Complete

* I’d confront them directly. Let them know I’m not scared.
    -> AddGang
     "Jy’s bold, maar onthou, die wrong move gaan get jou in die end."
    -> Trust_Test_Complete

= Trust_Test_Complete
 "Jy gaan need daai street sense to make jou way. Die Flats gaan keep testing jou trust."
-> END

// Branch: No_Trust_No_Care
= No_Trust_No_Care
Ja, maar die wrong person gaan use daai against jou, bru. Jy moet always wees two steps ahead.

* Let them try.
    -> Let_Them_Try

// Sub-Branch: Let_Them_Try
= Let_Them_Try
Ons gaan sien, maar die Flats gaan nie play met jou nie.
-> AddGang
-> END

// Branch: Haven’t_Figured_Trust
= Havent_Figured_Trust
Jy moet watch carefully, bru. Die streets gaan test jou trust vinnig.

* I’ll figure it out.
    -> Figure_It_Out

// Sub-Branch: Figure_It_Out
= Figure_It_Out
Just don’t wait too long. Die game gaan leave jou behind.
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

