//
//  MiniRemindersDataModel.swift
//  MiniReminders
//
//  Created by Phoebe on 3/4/21.
//

import Foundation

// --------------------------------------------------------

// define the main class for the MiniRemindersDataModel class:
class MiniRemindersDataModel {
    
    // instance variable containing all reminders:
    var myData: [ReminderItem] = [
        // instantiate oen example of a ReminderItem element
        // NOTE to self: remove this from final version of the app
        ReminderItem(pContent: "Example Reminder Content", pCategory: "Example Category", pDate: Date(timeIntervalSinceNow: TimeInterval(0)), pDone: false)
    ]
    
    /*
    func addEvent(content: String, category: String,
                  dueDate: Date, done: Bool) {
        self.myData.append(ReminderItem(pContent: content, pCategory: category,
                                        pDate: dueDate, pDone: done))
    }
    */
    
  
    
} // end of class MiniRemindersDataModel

// --------------------------------------------------------

// class defining one Reminder entry in the ToDo list:
class ReminderItem {
    var theContent: String
    var theCategory: String
    var theDate: Date
    var theDoneFlag: Bool
    
    // a constructor for the ReminderItem class:
    init(pContent: String, pCategory: String,
         pDate: Date, pDone: Bool) {
        self.theContent = pContent
        self.theCategory = pCategory
        self.theDate = pDate
        self.theDoneFlag = pDone
    }
} // end of class ReminderItem
// --------------------------------------------------------
