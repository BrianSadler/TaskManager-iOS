//
//  ViewController.swift
//  TaskManageriOS
//
//  Created by Brian Sadler on 11/1/18.
//  Copyright © 2018 Brian Sadler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Outlets
    @IBOutlet weak var userNameTextBox: UITextField!
    @IBOutlet weak var passwordTextBox: UITextField!
    
    //Alerts
    func showIncorrectUserAlerts() {
       let userError = UIAlertController(title: "Incorrect Username", message: "Username is not recognized. Please try again or create an account", preferredStyle: .alert)
         let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
          userError.addAction(okAction)
        self.present(userError, animated: true, completion: nil)
    }
    func showIncorrectPassAlert() {
        let passError =  UIAlertController(title: "Incorrect Password", message: "Password is not recognized. Please try again or create a new account", preferredStyle: .alert)
         let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
          passError.addAction(okAction)
        self.present(passError, animated: true, completion: nil)
    }
    

    @IBAction func signInButtonTapped(_ sender: Any) {
        let userName = userNameTextBox.text
        let password = passwordTextBox.text
        
        let userNameStored = UserDefaults.standard.string(forKey: "userName")
        let passwordStored = UserDefaults.standard.string(forKey: "password")
        
        if userName == userNameStored {
            if password == passwordStored {
                self.performSegue(withIdentifier: "TasksListSegue", sender: self)
            }
            else{
                
                print("bad password")
                showIncorrectPassAlert()
            }
        } else {
            print("bad username")
            showIncorrectUserAlerts()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

