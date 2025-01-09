//
//  PostData.swift
//  H4X0R News
//
//  Created by Gulliver Raed on 11/14/24.
//

import Foundation

struct Results: Decodable {
    var hits = [Post]()
}

struct Post: Decodable, Identifiable {
    let objectID: String
    var id: String {
        return objectID
    }
    
    let points: Int
    let title: String
    let url: String
}

