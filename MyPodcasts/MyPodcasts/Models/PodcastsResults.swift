//
//  PodcastsResults.swift
//  MyPodcasts
//
//  Created by Bruna Drago on 16/08/21.
//

import Foundation

struct PodcastsResults: Decodable, Hashable {
    
    let resultCount: Int
    
    let results: [PodcastsList]
}

struct PodcastsList: Decodable, Hashable {
    
    let trackName: String
    
    let kind: String
    
    let primaryGenreName: String
    
}
//
//struct PodcastsList: Decodable {
//
//    //let wrapperType: WrapperType
//    let kind: Kind
//    let collectionID, trackID: Int
//    let artistName, collectionName, trackName, collectionCensoredName: String
//    let trackCensoredName: String
//    let collectionViewURL: String
//    let feedURL: String?
//    let trackViewURL: String
//    let artworkUrl30, artworkUrl60, artworkUrl100: String
//    let collectionPrice, trackPrice: Double
//    let trackRentalPrice, collectionHDPrice, trackHDPrice, trackHDRentalPrice: Int?
//    let releaseDate: Date
//    let collectionExplicitness, trackExplicitness: Explicitness
//    let trackCount: Int
//    let country: Country
//    let currency: Currency
//    let primaryGenreName: String
//    let contentAdvisoryRating: String?
//    let artworkUrl600: String?
//    let genreIDS, genres: [String]?
//    let artistID: Int?
//    let artistViewURL: String?
//    let previewURL: String?
//    let discCount, discNumber, trackNumber, trackTimeMillis: Int?
//    let isStreamable: Bool?
//
//    enum CodingKeys: String, CodingKey {
//        case wrapperType, kind
//        case collectionID = "collectionId"
//        case trackID = "trackId"
//        case artistName, collectionName, trackName, collectionCensoredName, trackCensoredName
//        case collectionViewURL = "collectionViewUrl"
//        case feedURL = "feedUrl"
//        case trackViewURL = "trackViewUrl"
//        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice, trackRentalPrice
//        case collectionHDPrice = "collectionHdPrice"
//        case trackHDPrice = "trackHdPrice"
//        case trackHDRentalPrice = "trackHdRentalPrice"
//        case releaseDate, collectionExplicitness, trackExplicitness, trackCount, country, currency, primaryGenreName, contentAdvisoryRating, artworkUrl600
//        case genreIDS = "genreIds"
//        case genres
//        case artistID = "artistId"
//        case artistViewURL = "artistViewUrl"
//        case previewURL = "previewUrl"
//        case discCount, discNumber, trackNumber, trackTimeMillis, isStreamable
//    }
//
//
//    enum Explicitness: String, Codable {
//        case cleaned = "cleaned"
//        case explicit = "explicit"
//        case notExplicit = "notExplicit"
//    }
//
//    enum Country: String, Codable {
//        case usa = "USA"
//    }
//
//    enum Currency: String, Codable {
//        case usd = "USD"
//    }
//
//    enum Kind: String, Codable {
//        case podcast = "podcast"
//        case song = "song"
//    }
//}
