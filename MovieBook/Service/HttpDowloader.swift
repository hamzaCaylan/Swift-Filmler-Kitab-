//
//  HttpDowloader.swift
//  MovieBook
//
//  Created by Hamza Caylan on 9.06.2023.
//

import Foundation

class DownloaderClient {
    
    func filimlerIndir(search: String, completion: @escaping (Result<[Film]?,DownloaderError>) -> Void){
        
        guard let url = URL(string: "https://www.omdbapi.com/?s=\(search)&apikey=19ed07") else{
            return completion(.failure(.yanlisUrl))
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                return completion(.failure (.variGelmedi))
            }
            guard let filmCevabi = try? JSONDecoder().decode(GelenFlimler.self, from:data) else {
                return completion(.failure(.veriIslenmedi))
            }
            
            completion(.success(filmCevabi.filmler))
        }.resume()
    }
}

enum DownloaderError : Error {
    case yanlisUrl
    case variGelmedi
    case veriIslenmedi
}
