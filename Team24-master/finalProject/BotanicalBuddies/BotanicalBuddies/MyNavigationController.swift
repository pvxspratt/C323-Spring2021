//
//  MyNavigationController.swift
//  BotanicalBuddies
//
//  Created by Phoebe on 5/3/21.
//
//  Team 24 - Botanical Buddies
//  Phoebe Spratt || phospra@iu.edu
//  Christian Elliott || elliotcp@iu.edu
//  May 4, 2021
//

import UIKit

class MyNavigationController: UINavigationController {
    override var childForStatusBarStyle: UIViewController? {
        return self.topViewController
    }
}
