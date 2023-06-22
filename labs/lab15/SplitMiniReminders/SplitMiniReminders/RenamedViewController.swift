//
//  RenamedViewController.swift
//  SplitMiniReminders
//
//  Created by Phoebe on 3/11/21.
//

import UIKit

class RenamedViewController: UIViewController {

    @IBOutlet weak var myContent: UITextField!
    @IBOutlet weak var myCategory: UITextField!
    @IBOutlet weak var myDueDatePicker: UIDatePicker!
    @IBOutlet weak var addRem: UIButton!
    
    @IBAction func addReminder(_ sender: Any) {
        
        // get reference to AppDelegate:
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        // from AppDelegate, obtain reference to model:
        let lDataModel = lAppDelegate.myRemindersData
        
        lDataModel.addEvent(content: self.myContent.text ?? "Smile",
                            category: self.myCategory.text ?? "Mood",
                            dueDate: self.myDueDatePicker.date,
                            done: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

