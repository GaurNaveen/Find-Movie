//
//  ApiResponse.swift
//  Find Movie
//
//  Created by Naveen Gaur on 29/8/19.
//  Copyright © 2019 Naveen Gaur. All rights reserved.
//

/*
 
 This Model Object will be used to store
 the first response from the API.
 
 When getting data from the API decode the
 data object into this Model.
 
 */

import UIKit

class ApiResponse: NSObject {

    var page: Int?
    var total_results: Int?
    var total_pages: Int?
    var results: [Movie]?
}
