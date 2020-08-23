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
        
        if let url = URL(string: "mainapp://recent") {
            extensionContext?.open(url, completionHandler: nil)
        }
        
        //self.extensionContext?.open(URL(string: "mainapp://detailsVC")! , completionHandler: nil)
    }
    
}
