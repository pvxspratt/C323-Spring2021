//
//  ViewController.swift
//  RemindPersistent
//
//  Created by Phoebe on 4/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myContent: UITextField!
    @IBOutlet weak var myCategory: UITextField!
    @IBOutlet weak var myDueDatePicker: UIDatePicker!
    @IBOutlet weak var addRem: UIButton!
    @IBOutlet weak var reminders: UIButton! // shows the reminders without having to add a new one
    
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
        addRem.layer.cornerRadius = 20
        reminders.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }


}

