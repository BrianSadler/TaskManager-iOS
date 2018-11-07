//
//  TasksListViewController.swift
//  TaskManageriOS
//
//  Created by Brian Sadler on 11/4/18.
//  Copyright © 2018 Brian Sadler. All rights reserved.
//

import UIKit

class TasksListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var selectedTask: Tasks!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return taskArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
         let taskCell = tableView.dequeueReusableCell(withIdentifier: "taskCell") as! TasksTableViewCell
         let selectedTask = taskArray[indexPath.row]
        taskCell.titleLabel.text = selectedTask.title
        
        //Changes color based on task competion status. Green is completed, red is incomplete.
        if selectedTask.completed == true {
            taskCell.completionImageView.backgroundColor = UIColor.green
        } else {
            taskCell.completionImageView.backgroundColor = UIColor.red
        }
        //Formats the optional due date if the task has one so that the date is in a string format
        if let dueDate = selectedTask.dueDate {
            taskCell.dueDateLabel.text = formatDate(dueDate)
        } else {
            taskCell.dueDateLabel.text = ""
        }
        
        return taskCell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
   
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let selectedTask = taskArray[indexPath.row]
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") { (_, indexPath) in
            taskArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
     
        }
        let completeOrIncomplete = UITableViewRowAction(style: .normal, title: "Change Completion Status") { _,_ in
            if
                selectedTask.completed == true {
                selectedTask.completed = false
                tableView.reloadRows(at: [indexPath], with: .fade)
            } else {
                selectedTask.completed = true
                tableView.reloadRows(at: [indexPath], with: .fade)
            }
            
            
        }
        let editAction = UITableViewRowAction(style: .normal, title: "Edit Task") { _, _ in
            self.selectedTask = taskArray[indexPath.row]
            self.performSegue(withIdentifier: "EditTask", sender: self)
        }
        editAction.backgroundColor = UIColor.orange
        completeOrIncomplete.backgroundColor = UIColor.blue
        return [deleteAction, completeOrIncomplete, editAction]
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? EditTaskViewController {
            
            destination.taskEdit = selectedTask
           
            
        }
        
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
