//
//  PoemViewController.swift
//  ASPushkin2.4
//
//  Created by Dmitry on 03.04.2021.
//

import UIKit

class PoemViewController: UIViewController {

    @IBOutlet var poemLabel: UILabel!
    var poem = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        poemLabel.text = poem

    }
   
}
