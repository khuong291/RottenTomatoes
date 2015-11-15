//
//  MovieDetailsViewController.swift
//  RottenTomatoes
//
//  Created by Khuong Pham on 11/10/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class MediaDetailViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var synopsisTextView: UITextView!

    var media: Media!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = media.title

        titleLabel.text = media.title
        synopsisTextView.text = media.synopsis
        imageView.af_setImageWithURL(media.detailURL)
    }
}
