//
//  StatusViewController.swift
//  BotanicalBuddies
//
//  Created by Phoebe on 4/27/21.
//
//  Team 24 - Botanical Buddies
//  Phoebe Spratt || phospra@iu.edu
//  Christian Elliott || elliotcp@iu.edu
//  April 27, 2021
//

import UIKit

class StatusViewController: UIViewController {
    @IBOutlet weak var todayAmount: UILabel!
    @IBOutlet weak var recAmount: UILabel!

    /*
    @IBOutlet weak var cup: UIButton!
    @IBOutlet weak var biggerCup: UIButton!
    @IBOutlet weak var nalgene: UIButton!
    
    @IBAction func drinkCup(_ sender: Any) {
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lAppInfoModel = lAppDelegate.myAppInfoModel
        
        var amount = 0
        
        if lAppInfoModel.getUnits() == "ml" {
            amount = lAppInfoModel.drinkDrink(amount: 250)
        } else if lAppInfoModel.getUnits() == "oz" {
            amount = lAppInfoModel.drinkDrink(amount: 8)
        }
        
        self.todayAmount.text = "\(amount) \(lAppInfoModel.getUnits())"
    }
    
    @IBAction func drinkBiggerCup(_ sender: Any) {
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lAppInfoModel = lAppDelegate.myAppInfoModel
        
        var amount = 0
        
        if lAppInfoModel.getUnits() == "ml" {
            amount = lAppInfoModel.drinkDrink(amount: 350)
        } else if lAppInfoModel.getUnits() == "oz" {
            amount = lAppInfoModel.drinkDrink(amount: 12)
        }
        
        self.todayAmount.text = "\(amount) \(lAppInfoModel.getUnits())"
    }
    
    @IBAction func drinkNalgene(_ sender: Any) {
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lAppInfoModel = lAppDelegate.myAppInfoModel
        
        var amount = 0
        
        if lAppInfoModel.getUnits() == "ml" {
            amount = lAppInfoModel.drinkDrink(amount: 1000)
        } else if lAppInfoModel.getUnits() == "oz" {
            amount = lAppInfoModel.drinkDrink(amount: 32)
        }
        
        self.todayAmount.text = "\(amount) \(lAppInfoModel.getUnits())"
    }
 */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lAppInfoModel = lAppDelegate.myAppInfoModel
        
        self.todayAmount.text = "\(lAppInfoModel.getTodayAmount()) \(lAppInfoModel.getUnits())"
        self.recAmount.text = "\(lAppInfoModel.calculateRecAmount()) \(lAppInfoModel.getUnits())"
    }
}
