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
            ImageCarousel()
               
                .frame(height: 180)
                 .clipShape(RoundedRectangle(cornerRadius: 10))
                 .padding(.horizontal)
                 .padding(.top , -20)
            
            HStack(){
                Text("New Rival")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundStyle(.gray)
                Spacer()
                Button(action: {
                    //print action
                }, label: {
                    Image(systemName: "circle.grid.2x2.fill")
                        .foregroundColor(.black)
                })
            }
            .padding(.horizontal)
            .padding(.top, 10)
            
            //show products
            HomeProducts()
                .padding(.top, -18)
            
            
            
            
            
        }
        
  
        
        
    }
}

#Preview {
    HomeView()
}
