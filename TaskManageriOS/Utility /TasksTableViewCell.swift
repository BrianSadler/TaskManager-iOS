//
//  TasksTableViewCell.swift
//  TaskManageriOS
//
//  Created by Brian Sadler on 11/4/18.
//  Copyright © 2018 Brian Sadler. All rights reserved.
//

import UIKit

class TasksTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dueDateLabel: UILabel!
    @IBOutlet weak var completionImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
