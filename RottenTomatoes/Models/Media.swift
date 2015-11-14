//
//  Media.swift
//  RottenTomatoes
//
//  Created by Khuong Pham on 11/14/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import Foundation

enum MediaType {
    case Movie, DVD
}

struct Media {
    var title: String!
    var synopsis: String!
    var thumbnailURL: NSURL!
    var detailURL: NSURL!

    init() {

    }

    static func parse(json: NSDictionary) -> [Media] {
        var mediaList = [Media]()

        let movies = json["movies"] as! [NSDictionary]
        for movie in movies {
            var media = Media()

            media.title = movie["title"] as! String
            media.synopsis = movie["synopsis"] as! String
            media.thumbnailURL = NSURL(string: movie.valueForKeyPath("posters.thumbnail") as! String)!
            media.detailURL = NSURL(string: movie.valueForKeyPath("posters.detailed") as! String)!

            mediaList.append(media)
        }

        return mediaList
    }
}