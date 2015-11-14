//
//  MovieCell.swift
//  RottenTomatoes
//
//  Created by Khuong Pham on 11/9/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import UIKit

class MediaCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var synopsisLabel: UILabel!    
    @IBOutlet var posterView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
