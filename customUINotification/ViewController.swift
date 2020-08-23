//
//  ViewController.swift
//  customUINotification
//
//  Created by Jawaher Alagel on 8/18/20.
//  Copyright © 2020 Jawaher Alaggl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let categoryIdentifierNoti = UNNotificationCategory(identifier: "categoryIdentifierUI", actions: [], intentIdentifiers: [], options: [])
        // Register the notification type.
        UNUserNotificationCenter.current().setNotificationCategories([categoryIdentifierNoti])
    }
    
    
    
    @IBAction func setNotification(_ sender: Any) {
        
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.title = "This is a notification"
        content.body = "Want to know the details? "
        content.sound = .default
        
        content.categoryIdentifier = "categoryIdentifierUI"
        
        
        let notiDate = Calendar.current.dateComponents([.day, .month, .year, .hour, .minute, .second], from: Date().addingTimeInterval(5))
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: notiDate, repeats: true)
        let request = UNNotificationRequest(identifier: "reminder", content: content, trigger: trigger)
        center.add(request) { (error) in
            if error != nil {
                print("error:\(error?.localizedDescription ?? "Error Local Notification" )")
            }
        }
        
    }
    
    
    @IBAction func goToFirstApp(_ sender: UIButton) {
        
        let application = UIApplication.shared
        
        let firstAppPath = "first://"
        
        let appUrl = URL(string: firstAppPath)!
        
        let websiteUrl = URL(string: "https://www.billeasy.in")!
        
        if application.canOpenURL(appUrl) {
            
            application.open(appUrl, options: [:], completionHandler: nil)
            
        }else{
            
            application.open(websiteUrl)
        }
        
    }
    
    
    @IBAction func moveTo(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "detailsVC") as! detailsVC
        
        self.present(vc, animated: true, completion: nil)
        
        // self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

