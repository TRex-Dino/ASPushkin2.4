//
//  ViewController.swift
//  ASPushkin2.4
//
//  Created by Dmitry on 02.04.2021.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    
    private let user = User.getInfoAboutUser()
    
//MARK: - override func
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController
        else { return }
        guard let tabBarControllers = tabBarController.viewControllers
        else { return }
        
        for viewController in tabBarControllers {
            
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.greet = user.userInfo.name
            } else
            if let aboutMeVC = viewController as? AboutMeViewController {
                aboutMeVC.user = user
            } else
            if let poemVC = viewController as? PoemViewController {
                poemVC.poem = user.userInfo.poem
            }
            
        }
    }
    
//MARK: - IBAction
    @IBAction func logInPressed() {
        if userNameTF.text != user.userName || passwordTF.text != user.password {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password")
            passwordTF.text = ""
            return
        }
        performSegue(withIdentifier: "WelcomeSegue", sender: nil)
    }
    
    @IBAction func forgotData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Your name is", message: user.userName)
            : showAlert(title: "Your pass is", message: user.password)
    }
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
        
    }
    
}
//MARK: - alert message
extension LogInViewController {
    
    private func showAlert(title: String, message: String) {
        let alertMessage = UIAlertController(title: title,
                                             message: message,
                                             preferredStyle: .alert)
        let actionCancel = UIAlertAction(title: "OK", style: .cancel)
        
        alertMessage.addAction(actionCancel)
        
        present(alertMessage, animated: true)
    }
}

//MARK: - add functions in keyBoard

extension LogInViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInPressed()
        }
        return true
    }
}


