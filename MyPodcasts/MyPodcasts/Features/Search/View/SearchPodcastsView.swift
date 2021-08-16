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
    
    let podcasts = [
        Podcast(name: "Lets Build That App", author: "Brian"),
        Podcast(name: "Build Failed", author: "Bruno Rocha"),
        Podcast(name: "6 Minute English", author: "BBC")
    ]
    
    // MARK: - Inits
    
    init() {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Functions
    
}

// MARK: - UITableView Extension

extension SearchPodcastsView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return podcasts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = PodcastCell.identifier
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? PodcastCell
        else { return UITableViewCell() }
        
        cell.set(podcast: podcasts[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
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
        backgroundColor = .black
        podcastTableView.backgroundColor =  .systemPink
        
        podcastTableView.delegate = self
        podcastTableView.dataSource = self
        PodcastCell.registerOn(podcastTableView)
    }
}
