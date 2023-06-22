//
//  AppDelegate.swift
//  BotanicalBuddies
//
//  Created by Phoebe on 4/27/21.
//  Team 24 - Botanical Buddies
//  Phoebe Spratt || phospra@iu.edu
//  Christian Elliott || elliotcp@iu.edu
//  May 4, 2021
//

import UIKit
import CoreData
import UserNotifications

@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

    let myAppInfoModel : AppInfoModel = AppInfoModel()
    let myHistoryModel : HistoryDataModel = HistoryDataModel()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // asking for permission to give user notifications
        UNUserNotificationCenter.current().requestAuthorization(options: [.sound, .alert, .badge]) {
            granted, error in
            if granted {
                print("Approved notifications")
            } else {
                print(error as Any)
            }
        }
        
        UNUserNotificationCenter.current().delegate = self
        
        // persistant data
        let lDocsPath = NSSearchPathForDirectoriesInDomains(
            FileManager.SearchPathDirectory.documentDirectory,
            FileManager.SearchPathDomainMask.userDomainMask,
            true).last
        
        if let lDocsString: NSString = lDocsPath as NSString? {
            let lFileNameWithPath = lDocsString.appendingPathComponent("theFile.txt")
            print("in appDelegate: lDocsPath is \(lDocsPath!)")
            print("in appDelegate: lDocsString is \(lDocsString)")
            print("in appDelegate: lFileNameWithPath is \(lFileNameWithPath)")
        }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            // from the Programming-iOS-Book-Examples GitHub repository
            if let _ = try? context.save() {
                print("saved")
            }
        }
    }
    
    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "BotanicalBuddies")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            // from the Programming-iOS-Book-Examples GitHub repository
            print(storeDescription)
            if let error = error {
                fatalError("Unresolved error \(error)")
            }
        })
        return container
    }()

    
    
    // accessing the viewContext for CoreData
    // creating static variables that can then be accessed from the view controllers
    
    // verbose way
        // (UIApplication.shared.delegate as! AppDelegate).persistentContainer
    
    // cleaner way
    static var persistentContainter: NSPersistentContainer {
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer
    }
    // to access in view controllers :
        // let coreDataContainer = AppDelegate.persistentContainer

    static var viewContext: NSManagedObjectContext {
        return persistentContainter.viewContext
    }
    // let context = AppDelegate.viewContex
    
}
