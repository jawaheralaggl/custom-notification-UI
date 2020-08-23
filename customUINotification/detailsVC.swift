//
//  detailsVC.swift
//  customUINotification
//
//  Created by Jawaher Alagel on 8/18/20.
//  Copyright © 2020 Jawaher Alaggl. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    var detailsMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailsLabel.text = detailsMessage
    }
    
    
}
