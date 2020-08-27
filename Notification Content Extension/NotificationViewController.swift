//
//  NotificationViewController.swift
//  Notification Content Extension
//
//  Created by Jawaher Alagel on 8/18/20.
//  Copyright © 2020 Jawaher Alaggl. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {
    
    
    @IBOutlet weak var detailsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func didReceive(_ notification: UNNotification) {
        print("Extension received notification")
    }
    
    
    @IBAction func detailsButtonTapped(_ sender: Any) {
        print("[Details] button tapped")
        
        let url = "testApp://"
        let appUrl = URL(string: url)!
        
        let websiteUrl = "http://appstore.com/apple"
        let appStoreURL = URL(string: websiteUrl)!
        
        if canOpenURL(appUrl) {
            extensionContext?.open(appUrl, completionHandler: nil)
        }
        
        if canOpenURL(appStoreURL) {
            extensionContext?.open(appStoreURL, completionHandler: nil)
        }
        
    }
    
    func canOpenURL(_ url: URL) -> Bool {
        return true
    }
    
}

