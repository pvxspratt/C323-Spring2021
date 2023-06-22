//
//  ReminderTableViewController.swift
//  MiniReminders
//
//  Created by Phoebe on 3/10/21.
//

import UIKit

class ReminderTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lDataModel = lAppDelegate.myRemindersData
        
        return lDataModel.myData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lDataModel = lAppDelegate.myRemindersData
        let myData = lDataModel.myData[indexPath.row]
        let dateFormatter = DateFormatter()
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MiniRemindersCell", for: indexPath) as! MiniRemindersTableViewCell
        
        
        cell.reminderLabel?.text = myData.theContent
        cell.categoryLabel?.text = myData.theCategory
        cell.dateLabel.text = dateFormatter.string(from: myData.theDate)
        
        if myData.theDoneFlag == true {
            cell.doneLabel?.text = "Done"
        } else {
            cell.doneLabel?.text = "Not Done"
        }
        
        //cell.dateLabel.text = "\(lDataModel.myData[0].theDate)"
  
    
        return cell
    }
}
