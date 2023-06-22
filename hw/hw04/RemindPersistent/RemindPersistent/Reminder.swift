//
//  Reminder.swift
//  RemindPersistent
//
//  Created by Phoebe on 4/5/21.
//

import UIKit

class Reminder: NSObject, Codable {
    var reminder: String
    var category: String
    var date: String
    
    override var description: String {
        return "Reminder: " + self.reminder +
            "Category: " + self.category +
            "Date: " + self.date
    }
    
    init(rem: String, cat: String, date: String) {
        self.reminder = rem
        self.category = cat
        self.date = date
        super.init()
    }
}
