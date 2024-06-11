//
//  HomeHeader.swift
//  Ecom
//
//  Created by Atiqul Islam on 11/6/24.
//

import SwiftUI

struct HomeHeader: View {
    var body: some View {
    
            HStack(spacing: 20){
                Image(systemName: "location.north.fill")
                    .imageScale(.large)
                Text("Shanghai China")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
             Spacer()
                
                ZStack {
                    Image(systemName: "bell.fill")
                        .imageScale(.large)
                    
                    Text("2")
                        .font(.footnote)
                        .foregroundColor(.white)
                        .padding(6) // Adjust padding as needed
                        .background(Color.green)
                        .clipShape(Circle())
                        .offset(x: 10, y: -10) // Adjust x and y values as needed
                }
            }
            .padding()
        }
        
    
}

#Preview {
    HomeHeader()
}
