//
//  AppDelegate.swift
//  MiniPersistentReminders
//
//  Created by Phoebe on 3/4/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // create the only instance of the model class:
    //  (steps to instantiate a class...)
    // 1. use either 'var' or 'let', to declare a variable or a 'constant'
    // 2. name of the object to be instantiated
    // 3. ':' and data type for the object
    // 4. '=' and the instantiation of the object
    let myRemindersData: MiniRemindersDataModel = MiniRemindersDataModel()
    
    // example: a constructor is required if there are any instance variables
    //  that need to be initialized when this class is instantiated
//    override init() {
//        self.myRemindersData = MiniRemindersDataModel()
//    }



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
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


}

