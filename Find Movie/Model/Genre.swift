//
//  Genre.swift
//  Find Movie
//
//  Created by Naveen Gaur on 29/8/19.
//  Copyright © 2019 Naveen Gaur. All rights reserved.
//

/*
 
 This file is a Model Object for Movie
 Genre. This will have all the Genre
 that are available on the API.
 
 id: A numerical Id for a Genre
 
 name: A String that tells what
 type of Genre it is, e.g. Horror,
 Action etc.
 
 This Model Object can be used for both
 Tv and Movie Genres.

 */

import UIKit

/// Genre Model Object
class Genre: Decodable {
    var id: Int?
    var name: String?
}
