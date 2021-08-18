//
//  PodcastWorker.swift
//  MyPodcasts
//
//  Created by Bruna Drago on 16/08/21.
//

import Alamofire

typealias PodcastResult = (Result<PodcastsResults?, Error>) -> Void 

class PodcastWorker {
    
    static let shared = PodcastWorker()
    
    private let baseURL =  "https://itunes.apple.com/search?term="//"https://itunes.apple.com/search"
    
    private init() {}
    
    func fetchPodcastData(for name: String, completion: @escaping PodcastResult) {
        
        let endpoint = baseURL + "\(name)"
        
        NetworkManager.request(url: endpoint) { result in
            completion(result)
        }
    }
}
