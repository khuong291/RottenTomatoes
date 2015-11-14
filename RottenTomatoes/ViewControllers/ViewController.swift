//
//  ViewController.swift
//  RottenTomatoes
//
//  Created by Khuong Pham on 11/9/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var myTableView: UITableView!
    var movies = [NSDictionary]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        myTableView.delegate = self
        movies = [
            ["title" : "007", "sympopnis" : "a great movie"],
            ["title": "bend", "sympopnis" : "an old movie"]
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let s = "Hello \(indexPath.row)"
        cell.textLabel?.text = s
        print(s+"\n")
        return cell

    }


}

