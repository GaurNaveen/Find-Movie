//
//  ViewController.swift
//  Find Movie
//
//  Created by Naveen Gaur on 29/8/19.
//  Copyright © 2019 Naveen Gaur. All rights reserved.
//


/*
    This View will have the collection view that will display
    the search results when the user enters a query in the search bar.

 */


import UIKit

class DisplaySearchResultsController: UIViewController {
    
    // MARK: - View model reference
    lazy var movieViewModel = MovieViewModel()
    @IBOutlet weak var collectionView: UICollectionView!    // Used to display search results.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieViewModel.fetchMovieDetails {
            /*
            Reload the collection view model or even better will be to setup the
             collection view after the data has been loaded.
             
             If reloading the collection view, do it on the main thread.
            */
            
            //TODO: - The user taps on box to choose whether he wants a movie search or tv show. The color changes on tap.
            //         Put the two box in a stack.
            
            // Run the function on the main thread
            DispatchQueue.main.async {
                // Do the table view thing here
            }
        }
    }
    
    func tableViewSetup() {
        // Set the delegate and data source for our collection view.
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    
}

extension DisplaySearchResultsController: UICollectionViewDelegate,UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieViewModel.totalSearchResults()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Setup for Collection view cell.
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SearchResultsCell else {
            fatalError("Couldn't deque cell with identifier: cell ")
        }
        
        cell.setupMovieThumbnail()
        cell.setupMovieTitle()
        
        return cell
    }
    
}
