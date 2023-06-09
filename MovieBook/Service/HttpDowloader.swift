//
//  HttpDowloader.swift
//  MovieBook
//
//  Created by Hamza Caylan on 9.06.2023.
//

import Foundation

class DownloaderClient {
    
    func filimlerIndir (search: String, completion: @escaping (Result<[Film]?,DownloaderError>)->Void){
        
        guard let url = URL(string: "https://www.omdbapi.com/?s=(\)&apikey=19ed07") else{
            return completion(.failure(.yanlisUrl))
        }
        
    }
}

enum DownloaderError : Error {
    case yanlisUrl
    case variGelmedi
    case veriIslenmedi
}
