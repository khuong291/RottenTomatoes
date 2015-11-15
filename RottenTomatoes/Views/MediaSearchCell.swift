//
//  MediaSearchCell.swift
//  RottenTomatoes
//
//  Created by Khuong Pham on 11/15/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import Foundation
import UIKit

class MediaSearchCell: UITableViewCell {

    @IBOutlet var synopsisLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var posterImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
