//
//  AppInfoModel.swift
//  BotanicalBuddies
//
//  Created by Phoebe on 4/27/21.
//
//  Team 24 - Botanical Buddies
//  Phoebe Spratt || phospra@iu.edu
//  Christian Elliott || elliotcp@iu.edu
//  May 4, 2021
//

import Foundation

class AppInfoModel {
    var weight = 0
    var activityAmount = ""
    var waterRec = 0
    var todayAmount = 0
    var units = ""
    
    // Getters and Setters
    func setWeight(weight: Int) {
        self.weight = weight // change to text input
    }
    
    func getWeight() -> Int {
        return self.weight
    }
    
    func setActivity(activityAmount: String) {
        self.activityAmount = activityAmount // change to the text view input
    }
    
    func getActivity() -> String {
        return self.activityAmount
    }
    
    func setWaterRec() {
        self.waterRec = calculateRecAmount()
    }
    
    func getWaterRec() -> Int {
        return self.waterRec
    }
    
    func setTodayAmount(todayAmount: Int) {
        self.todayAmount = todayAmount
    }
    
    func getTodayAmount() -> Int {
        return self.todayAmount
    }
    
    func setUnits(unit: String) {
        self.units = unit
    }
    
    func getUnits() -> String {
        return self.units
    }

    func calculateRecAmount() -> Int {
        // calculation for rec amount
        let twoThirds = 0.67
        let ounce = Double(getWeight()) * twoThirds
        let amount = ounce * 29.574
        
        var recAmount = 0
        
        if units == "ml" {
            recAmount = Int(amount)
        } else if units == "oz" {
            recAmount = Int(ounce)
        } else if units == "" {
            recAmount = 0
        }
        
        return recAmount
    }
   
    func drinkDrink(amount: Int) -> Int{ // when press the cup button, add amount to todayAmount
        let drink = getTodayAmount() + amount
        setTodayAmount(todayAmount: drink)
        
        return getTodayAmount()
    }
}
