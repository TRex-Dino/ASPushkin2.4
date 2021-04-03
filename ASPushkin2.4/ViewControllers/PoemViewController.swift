//
//  PoemViewController.swift
//  ASPushkin2.4
//
//  Created by Dmitry on 03.04.2021.
//

import UIKit

class PoemViewController: UIViewController {

    @IBOutlet var poemTV: UITextView!
    var poem = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        poemTV.text = poem
        poemTV.backgroundColor = self.view.backgroundColor
        poemTV.adjustsFontForContentSizeCategory = true

    }
   
}
