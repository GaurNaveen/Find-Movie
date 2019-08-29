//
//  Service.swift
//  Find Movie
//
//  Created by Naveen Gaur on 29/8/19.
//  Copyright © 2019 Naveen Gaur. All rights reserved.
//

/*
 
 This file basically handle the connection
 to the API to get the Movie Data.
 
 This file will connect to the API and return
 results about a movie searched by the user.
 
 */


import UIKit
import Moya

enum MovieService {
    case searchMovie(query: String)
}

    // MARK: - Variables
    private let baseUrl = "https://api.themoviedb.org"
    private let region = "us"
    private let page = "1"
    private let adult = "false"
    private let language = "en-US"

extension MovieService: TargetType {

    var baseURL: URL {
        guard let url = URL(string: baseUrl) else {fatalError("This String is not of URL type.")}
        return url
    }
    
    var path: String {
        switch self {
        case .searchMovie:
            return "/3/search/movie"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .searchMovie:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .searchMovie(let query):
            return .requestParameters(parameters: ["query":query,"language":language,
                                                   "page":page,"include_adult":adult,
                                                    "region":region], encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        guard let apiKey = Bundle.main.object(forInfoDictionaryKey: "APIKey") as? String else {
            fatalError("The Api Key was Not found. Check the Info.plist file for more info.")
        }
        return ["X-Api-Key":apiKey]
    }
}
