//
//  HistoryTableViewController.swift
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
import CoreData

class HistoryTableViewController: UITableViewController {
    
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
        let lDataModel = lAppDelegate.myHistoryModel
        
        return lDataModel.myData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell", for: indexPath) as! HistoryTableViewCell
        
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        let lDataModel = lAppDelegate.myHistoryModel
        
        let myData = lDataModel.myData[indexPath.row]
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.medium
        dateFormatter.timeStyle = DateFormatter.Style.short
        let dateString = dateFormatter.string(from: myData.theDate)
        // TODO save to core data
        
        cell.amountLabel?.text = "\(myData.theAmount)"
        cell.dateLabel?.text = dateString
        
        // Persistence
        let lFM = FileManager()
        let lDocumentsDirectoryURL = try! lFM.url(
            for: .documentDirectory,
            in: .userDomainMask,
            appropriateFor: nil,
            create: false)
        
        let history = HistoryItem(am: "\(myData.theAmount)", date: dateString)
        let historyFile = lDocumentsDirectoryURL.appendingPathComponent("history.txt")
        
        do {
            let historyData = try PropertyListEncoder().encode(history)
            try historyData.write(to: historyFile, options: .atomic)
        } catch let err as NSError {
            print(err)
        }
    
        return cell
    }
}

