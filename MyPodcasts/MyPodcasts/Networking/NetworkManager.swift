//
//  NetworkManager.swift
//  MyPodcasts
//
//  Created by Bruna Drago on 16/08/21.
//

import Alamofire

typealias NetworkResult<T: Decodable> = ((Result<T?, Error>) -> Void)

protocol NetworkManagerProtocol {
    
    static func request<T: Decodable>(url: String, completion: @escaping NetworkResult<T>)
}

class NetworkManager: NetworkManagerProtocol {
    
    // MARK: - Inits
    
    init() {}
    
    // MARK: - Public Functions
    
    static func request<T: Decodable>(url: String, completion: @escaping NetworkResult<T>) {
        let request = AF.request(url, method: .get)
        
        request.validate().responseJSON { response in
            switch response.result {
            case .success:
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let data = response.data ?? Data()
                    let result = try decoder.decode(T.self, from: data)
                    completion(.success(result))
                } catch {
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
