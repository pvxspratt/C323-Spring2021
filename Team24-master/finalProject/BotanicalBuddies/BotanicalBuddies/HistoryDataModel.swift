//
//  HistoryDataModel.swift
//  BotanicalBuddies
//
//  Created by Phoebe on 5/4/21.
//
//  Team 24 - Botanical Buddies
//  Phoebe Spratt || phospra@iu.edu
//  Christian Elliott || elliotcp@iu.edu
//  May 4, 2021
//

import Foundation

class HistoryDataModel {
    var myData : [HistoryEntry] = []
    
    func addEvent(amount: Int, date: Date) {
        self.myData.append(HistoryEntry(pAmount: amount, pDate: date))
    }
}

class HistoryEntry {
    var theAmount: Int
    var theDate: Date
    
    init(pAmount: Int, pDate: Date) {
        self.theAmount = pAmount
        self.theDate = pDate
    }
}
