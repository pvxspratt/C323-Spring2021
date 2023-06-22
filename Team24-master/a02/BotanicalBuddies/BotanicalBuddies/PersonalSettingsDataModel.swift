//
//  PersonalSettingsDataModel.swift
//  BotanicalBuddies
//
//  Created by Phoebe on 4/27/21.
//
//  Team 24 - Botanical Buddies
//  Phoebe Spratt || phospra@iu.edu
//  Christian Elliott || elliotcp@iu.edu
//  April 27, 2021
//

import Foundation

class PersonalSettingsDataModel {
    var myData : [YourSettings] = []
    
    
}


class YourSettings {
    var yourWeight: Int
    var yourActivity: String
    var yourRecAmount: Int
    
    init(pWeight:Int, pActivity:String, pRecAmount:Int) {
        self.yourWeight = pWeight
        self.yourActivity = pActivity
        self.yourRecAmount = pRecAmount
    }
}
