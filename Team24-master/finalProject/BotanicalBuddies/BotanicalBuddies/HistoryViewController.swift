//
//  HistoryViewController.swift
//  BotanicalBuddies
//
//  Created by Phoebe on 4/27/21.
//
//  Team 24 - Botanical Buddies
//  Phoebe Spratt || phospra@iu.edu
//  Christian Elliott || elliotcp@iu.edu
//  May 4, 2021
//

import UIKit

class HistoryViewController: UIViewController {
    @IBOutlet weak var myAmount: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var seeHistory: UIButton!
    @IBOutlet weak var addEntry: UIButton!
    
    @IBAction func addEntry(_ sender: Any) {
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lDataModel = lAppDelegate.myHistoryModel
        
        lDataModel.addEvent(amount: Int(self.myAmount.text ?? "") ?? 4, date: self.datePicker.date)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addEntry.layer.cornerRadius = 20
        seeHistory.layer.cornerRadius = 20
    }
}
