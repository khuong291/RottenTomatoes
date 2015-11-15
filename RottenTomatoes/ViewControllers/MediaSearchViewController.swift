
import Foundation
import UIKit
import AlamofireImage

class MediaSearchViewController: UITableViewController {

    var mediaList = [Media]()
    var callback: (Media -> Void)?

    func update(mediaList: [Media]) {
        self.mediaList = mediaList
        tableView.reloadData()
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mediaList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("MediaSearchCell", forIndexPath: indexPath) as! MediaSearchCell

        let media = mediaList[indexPath.row]

        cell.titleLabel.text = media.title
        cell.synopsisLabel.text = media.synopsis
        cell.posterImage.af_setImageWithURL(media.thumbnailURL)

        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)

        let media = mediaList[indexPath.row]
        callback?(media)
    }
    
}
