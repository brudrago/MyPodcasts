//
//  SearchPodcastsViewController.swift
//  MyPodcasts
//
//  Created by Bruna Drago on 13/08/21.
//

import UIKit

class SearchPodcastsViewController: UIViewController {
    
    private lazy var podcastView: SearchPodcastsView = {
        return SearchPodcastsView()
    }()
    
    // MARK: - View Lifecycle
    
    override func loadView() {
        super.loadView()
        self.view = podcastView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchBar()

    }
    
    // MARK: - Private Functions
    
    private func setupSearchBar() {
        let search = UISearchController(searchResultsController: nil)
      //  search.searchResultsUpdater = self
        search.searchBar.delegate = self
        search.obscuresBackgroundDuringPresentation   = false
        search.searchBar.placeholder = ""
        definesPresentationContext = true
        navigationItem.searchController = search
        navigationItem.hidesSearchBarWhenScrolling = false
    }

}

// MARK: - UISearchBarDelegate Extension

extension SearchPodcastsViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        //implementar alamofire para procurar itunes API
    }
}
