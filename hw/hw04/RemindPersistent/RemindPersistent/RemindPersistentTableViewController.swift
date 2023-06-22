//
//  RemindPersistentTableViewController.swift
//  RemindPersistent
//
//  Created by Phoebe on 4/5/21.
//

import UIKit

class RemindPersistentTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
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
    
    // Date to String
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RemindPersistentCell", for: indexPath) as! RemindPersistentTableViewCell
        
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lDataModel = lAppDelegate.myRemindersData
        let myData = lDataModel.myData[indexPath.row]
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.medium
        dateFormatter.timeStyle = DateFormatter.Style.short
        let dateString = dateFormatter.string(from: myData.theDate)
        
        cell.reminderLabel?.text = myData.theContent
        cell.categoryLabel?.text = myData.theCategory
        cell.dateLabel?.text = dateString

        if myData.theDoneFlag == true {
            cell.doneLabel?.text = "Done"
        } else {
            cell.doneLabel?.text = "Not Done"
        }
        
        // Persistence
        let lFM = FileManager()
        let lDocumentsDirectoryURL = try! lFM.url(
            for: .documentDirectory,
            in: .userDomainMask,
            appropriateFor: nil,
            create: false)
        
        let reminder = Reminder(rem: myData.theContent, cat: myData.theCategory,
                                date: dateString)
        let reminderFile = lDocumentsDirectoryURL.appendingPathComponent("reminder.txt")
        
        do {
            let reminderData = try PropertyListEncoder().encode(reminder)
            try reminderData.write(to: reminderFile, options: .atomic)
        } catch let err as NSError {
            print(err)
        }
    
        return cell
    }
}
