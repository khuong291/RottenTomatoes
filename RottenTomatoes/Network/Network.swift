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
    func load(mediaType: MediaType, completion: Completion) {
        if mediaType == .Movie {
            loadMovies(completion)
        } else {
            loadDVDs(completion)
        }
    }

    private func loadMovies(completion: Completion) {
        load(movieURLString, completion: completion)
    }

    private func loadDVDs(completion: Completion) {
        load(dvdURLString, completion: completion)
    }

    private func load(urlString: String, completion: Completion) {
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