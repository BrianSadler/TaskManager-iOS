//
//  SignUpViewController.swift
//  TaskManageriOS
//
//  Created by Brian Sadler on 11/1/18.
//  Copyright © 2018 Brian Sadler. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    //Outlets
    @IBOutlet weak var newUserTextBox: UITextField!
    @IBOutlet weak var newPassTextBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createAccountButtonTapped(_ sender: Any) {
        let userName = newUserTextBox.text
        let password = newPassTextBox.text
        
        if (newUserTextBox.text?.isEmpty)! || (newPassTextBox.text?.isEmpty)! {
            displayErrorAlert()
        }
        UserDefaults.standard.setValue(userName,forKey: "userName")
        UserDefaults.standard.setValue(password,forKey: "password")
        accountCreated()
    }
    
    func displayErrorAlert()
    {
        let errorAlert = UIAlertController(title: "error", message: "Please fill in all fields", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        errorAlert.addAction(okAction)
        self.present(errorAlert, animated: true, completion: nil)
    }
    func accountCreated() {
        let creationAlert = UIAlertController(title: "Welcome, \(UserDefaults.standard.string(forKey: "userName")!)", message: "Account was created!", preferredStyle: .alert)
           let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
          creationAlert.addAction(okAction)
        self.present(creationAlert, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
