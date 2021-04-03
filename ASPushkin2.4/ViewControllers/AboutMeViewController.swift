//
//  AboutMeViewController.swift
//  ASPushkin2.4
//
//  Created by Dmitry on 02.04.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var cityBornLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    @IBOutlet var photoImageView: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = user.userInfo.name
        surnameLabel.text = user.userInfo.surname
        ageLabel.text = String(user.userInfo.age)
        cityBornLabel.text = user.userInfo.cityBorn
        hobbyLabel.text = user.userInfo.hobby
        
        photoImageView.layer.cornerRadius = photoImageView.frame.size.width * 0.5
        photoImageView.image = UIImage(named: user.userInfo.avatar)
    }
    

}
