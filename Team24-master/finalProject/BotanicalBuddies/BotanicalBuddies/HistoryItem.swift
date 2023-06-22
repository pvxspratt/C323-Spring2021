//
//  HistoryItem.swift
//  BotanicalBuddies
//
//  Created by Phoebe on 5/4/21.
//
//  Team 24 - Botanical Buddies
//  Phoebe Spratt || phospra@iu.edu
//  Christian Elliott || elliotcp@iu.edu
//  May 4, 2021
//

import UIKit

class HistoryItem: NSObject, Codable {
    var amount: String
    var date: String
    
    override var description: String {
        return "History = Amount: " + self.amount + "Date: " + self.date
    }
    
    init(am: String, date: String) {
        self.amount = am
        self.date = date
        super.init()
    }
}
