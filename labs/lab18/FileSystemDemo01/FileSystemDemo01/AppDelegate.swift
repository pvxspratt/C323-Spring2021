//
//  AppDelegate.swift
//  FileSystemDemo01
//
//  Created by Phoebe on 4/5/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // looking for the Documents/ directory in our sandbox:
        let lDocsPath = NSSearchPathForDirectoriesInDomains(
            FileManager.SearchPathDirectory.documentDirectory,
            FileManager.SearchPathDomainMask.userDomainMask,
            true).last
        // using NSString because it provides the .appendingPathComponent method:
        if let lDocsString: NSString = lDocsPath as NSString? {
            let lFileNameWithPath = lDocsString.appendingPathComponent("theFile.txt")
            print("in appDelegate: lDocsPath is \(lDocsPath!)")
            print("in appDelegate: lDocsString is \(lDocsString)")
            print("in appDelegate: lFileNameWithPath is \(lFileNameWithPath)")
        }
        if let myTmpDirPath: NSString = NSTemporaryDirectory() as NSString? {
            let myTmpFilePath = myTmpDirPath.appendingPathComponent("aTemporaryFileName.txt")
            print("in appDelegate: myTmpFilePath is \(myTmpFilePath)")
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

