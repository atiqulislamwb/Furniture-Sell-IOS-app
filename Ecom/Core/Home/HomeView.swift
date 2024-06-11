//
//  HomeView.swift
//  Ecom
//
//  Created by Atiqul Islam on 11/6/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack(){
            HomeHeader()
             
            HStack {
                VStack(alignment: .leading, spacing: -3) {
                    Text("Find The Most")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Text("Luxurious ")
                            .font(.title)
                            .fontWeight(.semibold)
                        Text("Furniture")
                                       .font(.title)
                                       .fontWeight(.semibold)
                                       .foregroundColor(Color(.blue))
                    }
                }
                Spacer() // Pushes the VStack to the left
            }
            .padding(.horizontal)
            .padding(.top, -10)
            
            //Search View
            HomeSearch()
                .padding(.top, -40)

        }
        
        
    }
}

#Preview {
    HomeView()
}
