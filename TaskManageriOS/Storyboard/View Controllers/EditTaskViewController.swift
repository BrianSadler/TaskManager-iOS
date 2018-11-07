//
//  EditTaskViewController.swift
//  TaskManageriOS
//
//  Created by Brian Sadler on 11/5/18.
//  Copyright © 2018 Brian Sadler. All rights reserved.
//

import UIKit

class EditTaskViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var editTaskTitle: UITextField!
    @IBOutlet weak var editTaskDescription: UITextView!
    @IBOutlet weak var editDatePicker: UIDatePicker!
    
    var taskEdit: Tasks!
    
    @IBAction func editTaskButtonTapped(_ sender: Any) {
        
        if (editTaskTitle.text?.isEmpty)! || editTaskDescription.text.isEmpty {
            error()
        } else {
            taskEdit.title = editTaskTitle.text!
            taskEdit.taskDescription = editTaskDescription.text!
        }
        taskEdit.dueDate = editDatePicker.date
        
        
        
    }
    func error() {
        let errorAlert = UIAlertController(title: "Error", message: "All Fields not filled out. Please fill out all of the fields.", preferredStyle: .alert)
        
        //UIAlertAction
        let closeAction = UIAlertAction(title: "Close", style: .default, handler: nil)
        
        //add the action in the alert controller
        errorAlert.addAction(closeAction)
        
        //present alert controller
        self.present(errorAlert, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editTaskTitle.text = taskEdit.title
        editTaskDescription.text = taskEdit.taskDescription
        

        // Do any additional setup after loading the view.
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
