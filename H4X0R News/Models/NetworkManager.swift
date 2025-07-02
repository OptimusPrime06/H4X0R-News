//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Gulliver Raed on 11/14/24.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                //print("ana fel response")
                                self.posts = results.hits
                                //print(self.posts)
                            }
                        } catch {
                            //print("ana fel error")
                            print(error)
                        }
                    }
                    
                }
            }
            task.resume()
        }
    }
}


