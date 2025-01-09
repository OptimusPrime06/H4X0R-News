//
//  DetailView.swift
//  H4X0R News
//
//  Created by Gulliver Raed on 11/15/24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "www.google.com")
}


