//
//  GifNetwork.swift
//  GiphySearchIOS
//
//  Created by Karla Aldana on 4/2/20.
//  Copyright © 2020 Karla Aldana. All rights reserved.
//

import Foundation

class GifNetwork {
    let apiKey = "NMu4FFwWKRH46pGYfY6ejKt1VAx8Arvv"
    
    /**
     Fetches gifs from the Giphy api
     -Parameter searchTerm: What we should query gifs of.
     */
    
    func fetchGifs(searchTerm: String) {
//        Create a GET url request
        let url = URL(string: "https://api.giphy.com/v1/gifs/search?api_key=\(apiKey)&q=\(searchTerm)")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { (data, reponse, error) in
            if let err = error {
                print ("Error fetching from Giphy: ", err.localizedDescription)
            }
            print("Giphy Data: ", data as Any)
        }.resume()
    }
}

