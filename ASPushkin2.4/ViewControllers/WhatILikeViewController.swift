//
//  WhatILikeViewController.swift
//  ASPushkin2.4
//
//  Created by Dmitry on 03.04.2021.
//

import UIKit

class WhatILikeViewController: UIViewController {
    @IBOutlet var likeLabel: UILabel!
    
    var likes: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        likeLabel.text = likes.joined(separator: ",")
    }
    


}
