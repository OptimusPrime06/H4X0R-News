//
//  ContentView.swift
//  H4X0R News
//
//  Created by Gulliver Raed on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                            .padding(.trailing)
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
            print("fetch data sha8ala")
            
        }
    }
}

#Preview {
    ContentView()
}



