//
//  HomeSearch.swift
//  Ecom
//
//  Created by Atiqul Islam on 11/6/24.
//

import SwiftUI

struct HomeSearch: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        
     
        HStack(spacing: 0) {
                    // Search icon and TextField in a ZStack for rounded corners
                    ZStack {
                        HStack {
                            // Search icon
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .padding(.leading, 8)

                            // TextField for search input
                            TextField("Search Products", text: $searchText)
                                .padding(12)
                                .padding(.leading, -8)
                        }
                        .background(Color(.white))
                        .cornerRadius(10)
                        .padding(.vertical)
                        .shadow(radius: 3)
                        
                    }
                    
                    // Camera button
                    Button(action: {
                        // Action for camera button
                    }) {
                        Image(systemName: "camera")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(.blue))
                            .cornerRadius(10)
                    }
                    .padding(.leading, 8) // Space between search bar and camera button
                }
                .padding()
    }
    
}

#Preview {
    HomeSearch()
}
