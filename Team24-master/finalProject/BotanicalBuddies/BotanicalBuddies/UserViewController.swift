//
//  UserViewController.swift
//  BotanicalBuddies
//
//  Created by Phoebe on 5/4/21.
//
//  Team 24 - Botanical Buddies
//  Phoebe Spratt || phospra@iu.edu
//  Christian Elliott || elliotcp@iu.edu
//  May 4, 2021
//

import CoreData
import UIKit

class UserViewController: UIViewController {
    var userItems = [User]()
    
    let del = UIApplication.shared.delegate as! AppDelegate
    
    var moc : NSManagedObjectContext!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moc = del.persistentContainer.viewContext
    }
    
}

