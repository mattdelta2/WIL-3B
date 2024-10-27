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

* I’m ready for anything.
    -> Ready_For_Anything

* I’m still learning who I can and can’t trust.
    -> Still_Learning_Trust

// Sub-Branch: Ready_For_Anything
= Ready_For_Anything
Good, maar onthou, die game kan change vinnig.
-> AddEdu
-> END

// Sub-Branch: Still_Learning_Trust
= Still_Learning_Trust
Jy moet figure daai vinnig uit, bru. Die wrong trust gaan maak klaar met jou.
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
~ GangStat = MIN(GangStat - 1, 0)
-> END

= AddGang
~ GangStat += 1
~ EduStat = MIN(EduStat - 1, 0)
-> END
