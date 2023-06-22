C323 / Spring 2021, Final Project
Team 24 - Botanical Buddies
Phoebe Spratt || phospra@iu.edu
Christian Elliott || elliotcp@iu.edu
May 4, 2021

Phoebe's responsibilities:
	Core Data
	User Notifications
	AppInfoModel
	SettingsViewController
	UnitsViewController
	BodyInfoViewController
	WeightViewController
	UserViewController
	MyNavigationController
	UserNotifViewController

Christian's responsibilities:
	HistoryItem
	HistoryDataModel
	HistoryViewController
	HistoryTableViewController
	HistoryTableViewCell
	StatusViewController
	Persistant settings for history table view controller

The first time you open the app you are asked if you want to allow user notifications, 
that will correspond with the UISwitch that will also turn the notifications on and off.
The purpose of the notifications is to remind you to drink water.Then you need to set the
units you want to use, either ml or oz, for water. You do that in the UnitsViewController.
Do not go to the status tab before you set the units and weights it will cause problems.
Then you will go and input your weight and it will calculate the recommended amount of 
water you should drink every day. That will save it to the core data so that it will not 
change unless you change it yourself. It won't go away if you leave the app. Then it will
also be displayed on the status page. If the user wants to change units they can do so 
and still retrieve and save to core data. Changing the units will automatically change 
the units in all places it's used including the recommended amount. When you go to the
status page there are three buttons each for a size of water container so you can add
more or less at a time. That will add it to the today's amount and save using core data.
Because we can not demo the app with multiple days, we implemented a new day to simulate
what happens every midnight, where the today's amount goes back to zero. Then you can 
also save your data using the history tab. You choose the day and you log in how much
water you had that day. Leaving the app will not affect the history page. That is pretty
much it.

Xcode Version 12.4, works on all iOS devices, but layout was made using and Xs simulator

Completed required features:
Follows the MVC design pattern
User interface incorporates input, output, more than 3 separate views (tab, split, and
	a navigation controller), one table view controller
Persistent settings/preferences
Core Data
User Notifications

Differences from a01
why:
Changes from assignment01 were because of time constraints, we did not have time to do 
	all of what we had planned out for a01
what:
The changes made included: taking out the plant buddy aspect out and having to make it
	just a measure of how much you have drank that day and what the recommended amount
	of water you need a day based on your weight. We did not have the time to also make
	body activity a factor in how much water is recommended. We changed the cups from
	being choose your own to only three options.
when:
These changes were present in our Assignment 02 submission
where:
The changes are not noticeable because the only thing it is is lack thereof, because we
	did not get to those implementations.

We verify and confirm that our Xcode project that we turned in actually compiles and runs
without crashing