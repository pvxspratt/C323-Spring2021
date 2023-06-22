//
//  UserNotifViewController.swift
//  BotanicalBuddies
//
//  Created by Phoebe on 5/4/21.
//
//  Team 24 - Botanical Buddies
//  Phoebe Spratt || phospra@iu.edu
//  Christian Elliott || elliotcp@iu.edu
//  May 4, 2021
//

import UIKit
import UserNotifications

class UserNotifViewController: UIViewController {
    @IBAction func enableReminder(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
           // Ask user permission
            let center = UNUserNotificationCenter.current()
            center.delegate = self
            center.requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
                if granted {
                    print("Permission granted. Scheduling notification")
                    self.scheduleNotification()
                }
            }
        }
        
        func scheduleNotification() {
            let notificationCenter = UNUserNotificationCenter.current()
            
            let notification = UNMutableNotificationContent()
            notification.title = "Important Message"
            notification.body = "Drink some water"
            notification.sound = UNNotificationSound.default
            
            var dateComponents = DateComponents()
            dateComponents.hour = 8
            dateComponents.minute = 0
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 6, repeats: false)
            
            let notificationRequest = UNNotificationRequest(identifier: UUID().uuidString, content: notification, trigger: trigger)
            notificationCenter.add(notificationRequest)
        }
    }
    extension UIViewController: UNUserNotificationCenterDelegate {
        public func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Swift.Void) {
            completionHandler( [.alert, .badge, .sound])
        }
    }
