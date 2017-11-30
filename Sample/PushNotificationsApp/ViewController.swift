//
//  ViewController.swift
//  PushNotificationsApp
//
//  Created by Pushwoosh on 30/11/2017.
//  Copyright © 2017 Pushwoosh. All rights reserved.
//

import UIKit
import PushwooshInboxUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showInboxManually(_ sender: Any) {
        self.navigationController?.pushViewController(PWIInboxUI.createInboxController(with: PWIInboxStyle.default()), animated: true)
    }
    
}

