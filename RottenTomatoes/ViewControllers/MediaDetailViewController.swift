//
//  MovieDetailsViewController.swift
//  RottenTomatoes
//
//  Created by Khuong Pham on 11/10/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import UIKit

class MediaDetailViewController: UIViewController {

    @IBOutlet var synopsisLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var imageView: UIImageView!

    var movie: NSDictionary!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["synopsis"] as? String

        let url = NSURL(string: movie.valueForKeyPath("posters.detailed") as! String)!
        imageView.setImageWithURL(url)
        self.title = movie["title"] as? String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
