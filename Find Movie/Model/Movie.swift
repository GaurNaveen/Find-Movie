//
//  Movie.swift
//  Find Movie
//
//  Created by Naveen Gaur on 29/8/19.
//  Copyright © 2019 Naveen Gaur. All rights reserved.
//

/*
 This File has the Movie Model, which will store
 detail about a specific movie.This model will
 be used when we get the data from the API.
 The data will be converted into this object
 and then we can use this object to display
 the data to the user.
 
*/
import UIKit

class Movie: NSObject {
    
    var popularity: Double?
    var id: Int?
    var video: Bool?
    var vote_count: Int?
    var vote_average: Int?
    var title: String?
    var release_date: String?
    var original_language: String?
    var original_title: String?
    var genre_ids: [Int]?
    var backdrop_path: String?
    var adult: Bool?
    var poster_path: String?
    
}
