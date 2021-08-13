//
//  SearchPodcastsView.swift
//  MyPodcasts
//
//  Created by Bruna Drago on 13/08/21.
//

import UIKit
import SnapKit

class SearchPodcastsView: UIView {
    
    // MARK: - UI Components
    
    private lazy var podcastTableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
}

// MARK: - UITableView Extension

extension SearchPodcastsView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

// MARK: - ViewCodeProtocol Extension

extension SearchPodcastsView: ViewCodeProtocol {
    
    func setupSubviews() {
        addSubview(podcastTableView)
    }
    
    func setupConstraints() {
        podcastTableView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.right.equalToSuperview()
        }
    }
    
    func setupComponents() {
        backgroundColor = .systemBackground
        
        podcastTableView.delegate = self
        podcastTableView.dataSource = self
    }
}
