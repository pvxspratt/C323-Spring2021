//
//  ViewController.swift
//  MiniReminders
//
//  Created by Phoebe on 3/4/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myContent: UITextField!
    @IBOutlet weak var myCategory: UITextField!
    @IBOutlet weak var myDueDatePicker: UIDatePicker!
    @IBOutlet weak var addRem: UIButton!
    
    @IBAction func addReminder(_ sender: Any) {
        
        // get reference to AppDelegate:
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        // from AppDelegate, obtain reference to model:
        let lDataModel = lAppDelegate.myRemindersData
        
        lDataModel.myData.append(ReminderItem(pContent: myContent.text!,
                                              pCategory: myCategory.text!,
                                              pDate: myDueDatePicker.date, pDone: false))
        /*
        lDataModel.addEvent(content: self.myContent.text ?? "Smile",
                            category: self.myCategory.text ?? "Mood",
                            dueDate: self.myDueDatePicker.date,
                            done: false)
        */
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

