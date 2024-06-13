//
//  SearchView.swift
//  Ecom
//
//  Created by Atiqul Islam on 11/6/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                HStack {
                    // Search icon
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .padding(.leading, 8)
                    
                    // TextField for search input
                    TextField("Search Products", text: $searchText)
                        .padding(12)
                        .padding(.leading, -8)
                    
                    // Clear button
                    if !searchText.isEmpty {
                        Button(action: {
                            searchText = ""
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                                .padding(.trailing, 8)
                        }
                    }
                }
                .background(Color(.white))
                .cornerRadius(10)
                .padding(.vertical)
                .shadow(radius: 2)
            }
            .padding(.horizontal)
            
            Spacer() // This spacer pushes the ZStack to the top
        }
        .padding(.top, 20) // Add some padding at the top if needed
    }
}

#Preview {
    SearchView()
}
