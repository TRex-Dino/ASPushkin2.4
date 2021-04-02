//
//  WelcomeViewController.swift
//  ASPushkin2.4
//
//  Created by Dmitry on 02.04.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    var user = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(user)!"

    }
    

 

}
