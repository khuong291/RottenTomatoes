//
//  MoviesViewController.swift
//  RottenTomatoes
//
//  Created by Khuong Pham on 11/9/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import UIKit
import SVProgressHUD
import Alamofire

class MediaListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var mediaType: MediaType!
    var mediaList = [Media]()
    var refreshControl = UIRefreshControl!()

    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self

        load()
        refreshMedia()
    }

    func refreshMedia() {
        self.refreshControl = UIRefreshControl()
        self.refreshControl.attributedTitle = NSAttributedString(string: "🐌🐌🐌🐌Refreshing🐌🐌🐌🐌")
        self.refreshControl.addTarget(self, action: "onRefresh", forControlEvents: .ValueChanged)
        self.tableView.addSubview(refreshControl)
    }

    func onRefresh() {
            self.load()
            self.tableView.reloadData()
            self.refreshControl.endRefreshing()
    }

    func load() {
        let network = Network()

        SVProgressHUD.showWithStatus("Loading data")
        network.load(mediaType) { (mediaList) -> Void in
            if let mediaList = mediaList {
                SVProgressHUD.dismiss()
                self.mediaList = mediaList
                self.tableView.reloadData()
            } else {
                SVProgressHUD.showErrorWithStatus("Error loading data")
            }
        }
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mediaList.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("MediaCell", forIndexPath: indexPath) as! MediaCell

        let media = mediaList[indexPath.row]

        cell.titleLabel.text = media.title
        cell.synopsisLabel.text = media.synopsis
        cell.posterView.af_setImageWithURL(media.thumbnailURL)

        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPathForCell(cell)
        let media = mediaList[indexPath!.row]

        let mediaDetailVC = segue.destinationViewController as! MediaDetailViewController
        mediaDetailVC.media = media
    }

}
