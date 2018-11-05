//
//  DateFormat.swift
//  TaskManageriOS
//
//  Created by Brian Sadler on 11/4/18.
//  Copyright © 2018 Brian Sadler. All rights reserved.
//

import Foundation

func formatDate(_ date: Date) -> String {
    let formatter = DateFormatter()
    
    formatter.dateFormat = "MMM d, yyyy"
    
    let formattedString = formatter.string(from: date)
    
    return formattedString
}
