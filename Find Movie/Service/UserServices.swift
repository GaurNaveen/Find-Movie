//
//  UserServices.swift
//  Find Movie
//
//  Created by Naveen Gaur on 29/8/19.
//  Copyright © 2019 Naveen Gaur. All rights reserved.
//

import UIKit
import Moya

class UserServices: NSObject {

    static let shareInstance = UserServices()
    
    func getSearchedMovie(completion: @escaping (ApiResponse?,Error?) -> () ) {
        let newsProvider = MoyaProvider<MovieService>()
        newsProvider.request(.searchMovie(query: "Wolf of Wall street")) { (result) in
            switch result {
            
            case .success(let response):
                if response.statusCode == 200 {
                    let movies = try? JSONDecoder().decode(ApiResponse.self, from: response.data)
                    completion(movies,nil)
                }
            case .failure(_):
                print("Bang")
                
            }
        }
    }
    
    func downloadMovieThumnail() {
        
    }
    
}
