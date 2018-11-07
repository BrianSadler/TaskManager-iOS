//
//  AddTaskViewController.swift
//  TaskManageriOS
//
//  Created by Brian Sadler on 11/5/18.
//  Copyright © 2018 Brian Sadler. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    //Outlets
    @IBOutlet weak var taskTitleTextBox: UITextField!
    @IBOutlet weak var taskDueDateDatePicker: UIDatePicker!
    @IBOutlet weak var taskDescriptionTextView: UITextView!
    

    
    @IBAction func addTaskButtonTapped(_ sender: Any) {
        let newTask: Tasks = Tasks.init(title: taskTitleTextBox.text!, taskDescription: taskDescriptionTextView.text!, dueDate: taskDueDateDatePicker.date)
        taskArray.append(newTask)
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
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
