//
//  MovieDetailsViewController.swift
//  RottenTomatoes
//
//  Created by Khuong Pham on 11/10/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    @IBOutlet var synopsisLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var imageView: UIImageView!

    var movie: NSDictionary!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
