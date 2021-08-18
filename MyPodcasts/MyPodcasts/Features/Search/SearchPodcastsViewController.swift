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
       // fechtPodcasts(name: "modusoperandi")
    }
    
    func fechtPodcasts(name: String) {
        PodcastWorker.shared.fetchPodcastData(for: name) { results in
            switch results {
            case .success(let podcastsResult):
                print("====PodcastsResults:\(String(describing: podcastsResult))")
            case .failure(let error):
            print("===ERROR:\(error)")
            }
        }
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
        fechtPodcasts(name: searchText)
        //implementar alamofire para procurar itunes API// esta fazendo a pesquisa a cada letra
    }
}
