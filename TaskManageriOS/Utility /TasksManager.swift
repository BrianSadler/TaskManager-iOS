//
//  TasksManager.swift
//  TaskManageriOS
//
//  Created by Brian Sadler on 11/2/18.
//  Copyright © 2018 Brian Sadler. All rights reserved.
//

import Foundation


class TasksManager {
    
    static let sharedInstance = TasksManager()
    
}
var filePath: String {
    let manager = FileManager.default
    let url = manager.urls(for: .documentDirectory, in: .userDomainMask).first
    return (url?.appendingPathComponent("Tasks").path)!
}



var taskArray:[Tasks] = [Tasks.init(title: "Do homework", taskDescription: "Lots of math homework", dueDate: Date.init() )]
