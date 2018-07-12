//
//  ViewController.swift
//  10ViewControllerNotificationCenter
//
//  Created by DungB96 on 2018/06/13.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self, selector: #selector(showDataReceivedFromSecondVC(notification:)), name: Notification.Name(rawValue:"myNotification"), object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func showDataReceivedFromSecondVC(notification: Notification){
        if let message = notification.userInfo {
            if let msg = message["message"] as? String {
                self.textLabel.text = msg
            }
        }
    }

}

