//
//  Network.swift
//  RottenTomatoes
//
//  Created by Khuong Pham on 11/14/15.
//  Copyright © 2015 Fantageek. All rights reserved.
//

import Foundation
import Alamofire

let movieURLString = "https://coderschool-movies.herokuapp.com/movies?api_key=xja087zcvxljadsflh214"
let dvdURLString = "https://coderschool-movies.herokuapp.com/dvds?api_key=xja087zcvxljadsflh214"
typealias Completion = ([Media]?) -> Void

struct Network {
    func loadMovies(completion: Completion) {
        load(movieURLString, completion: completion)
    }

    func loadDVDs(completion: Completion) {
        load(dvdURLString, completion: completion)
    }

    func load(urlString: String, completion: Completion) {
        Alamofire.request(.GET, urlString)
            .responseJSON { response in
                if let JSON = response.result.value as? NSDictionary {
                    let mediaList = Media.parse(JSON)
                    completion(mediaList)
                } else {
                    completion(nil)
                }
        }
    }
}