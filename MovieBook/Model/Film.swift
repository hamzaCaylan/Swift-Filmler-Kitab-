//
//  Film.swift
//  MovieBook
//
//  Created by Hamza Caylan on 9.06.2023.
//

import Foundation

struct Film : Codable {
    let title : String
    let year : String
    let imdbId : String
    let type : String
    let poster : String
    
    private enum CodingKeys : String, CodingKey{
        case title = "Title"
        case year = "Year"
        case imdbId = "imdbId"
        case type = "Type"
        case poster = "Poster"
    }
}

struct GelenFlimler : Codable {
    let filimler : [Film]
    
    private enum CodingKeys : String, CodingKey{
        case filimler = "Search"
    }
}
