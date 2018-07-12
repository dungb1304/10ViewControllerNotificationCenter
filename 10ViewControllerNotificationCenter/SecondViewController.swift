//
//  SecondViewController.swift
//  10ViewControllerNotificationCenter
//
//  Created by DungB96 on 2018/06/13.
//  Copyright © 2018 DungB96. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnSendData(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name(rawValue:"myNotification"), object: nil, userInfo: ["message": textField.text ?? ""])
        dismiss(animated: true, completion: nil)
    }
    

}
