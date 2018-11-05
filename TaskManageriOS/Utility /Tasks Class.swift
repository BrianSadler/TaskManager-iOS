//
//  Tasks Class.swift
//  TaskManageriOS
//
//  Created by Brian Sadler on 11/2/18.
//  Copyright © 2018 Brian Sadler. All rights reserved.
//

import Foundation


class Tasks {
    var title: String
    var description: String
    var completed = false
    var dueDate: Date?
    
    init(title:String, description: String, dueDate: Date?){
        self.title = title
        self.description = description
        self.dueDate = dueDate
    }
    }


