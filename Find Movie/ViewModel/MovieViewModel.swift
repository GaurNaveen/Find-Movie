//
//  MovieViewModel.swift
//  Find Movie
//
//  Created by Naveen Gaur on 29/8/19.
//  Copyright © 2019 Naveen Gaur. All rights reserved.
//

/*
 
 Model View Model will hold all the movie info.
 At first the Movie View model will only have basic info
 about it , but we will add more info to it.
 
 */

import UIKit

class MovieViewModel: NSObject {

    // Movie Array - This holds all the Movie objects that we get from API.
    private var movies: [Movie]?
    private var moviesThumbnail: [UIImage]?
    
    /// This function will connect to the ```UserServices``` file and call the function
    /// that will get the movie details.
    ///
    /// - Parameter completion: Takes a closure as a param. Could be a func that it needs to
    ///                         execute after eveything has been done.
    func fetchMovieDetails(completion: @escaping () -> ()) {
        UserServices.shareInstance.getSearchedMovie { (response, error) in
            
            //  Get the Movies from the response.
            if let response = response {
                self.movies = response.results  // results is basicalls [Movies]?
                completion()
            }
        }
    }
    
    func totalSearchResults() -> Int {
        // Return the total number of results received from the API. If none,return 0.
        return movies?.count ?? 0
    }
    
    
    /// This function should call some method in UserServices file
    ///  and download the image. Then store it and make a new func
    ///  to return it.
    
    ///  Or perform this method in async.
    
    /// Make Sure you clear cache
    ///
    /// - Parameter indexPath: Cell row
    func getMovieThumnail(indexPath: Int) {
        
    }
    

}
