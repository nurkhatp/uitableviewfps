//
//  Cell.swift
//  UITableViewFPS
//
//  Created by Nurkhat Pazylov on 8/3/19.
//  Copyright © 2019 UITableView. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension Cell {
    func configure(with number: Int) {
        numberLabel.text = "\(number)"
    }
}
