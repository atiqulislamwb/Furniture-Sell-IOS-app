//
//  HomeProducts.swift
//  Ecom
//
//  Created by Atiqul Islam on 12/6/24.
//

import SwiftUI


struct Product: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let price: String
    let image: String
}



struct HomeProducts: View {
    let products = [
           Product(name: "Nice Couch", category: "Home", price: "$10", image: "f1"),
           Product(name: "Beautiful cab", category: "Kitchen", price: "$20", image: "f2"),
           Product(name: "Nice Stool", category: "Drawing", price: "$30", image: "f3"),
           Product(name: "Nice Waver", category: "Room", price: "$30", image: "f4"),
           Product(name: "Paul Waver", category: "Kitchen", price: "$30", image: "f5"),
           Product(name: "Cabinet haul", category: "Outside", price: "$30", image: "f6"),
           // Add more products here
       ]
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(products) { product in
                            VStack {
                                      Image(product.image)
                                          .resizable()
                                          .scaledToFill()
                                          .frame(width: 160, height: 140)
                                          .cornerRadius(8)
                                      
                                      HStack {
                                          VStack(alignment: .leading) {
                                              Text(product.name)
                                                  .font(.headline)
                                                  .fontWeight(.semibold)
                                              
                                              
                                              Text(product.category)
                                                  .font(.footnote)
                                                  .foregroundColor(.gray)
                                              
                                              Text(product.price)
                                                  .font(.title3)
                                                  .foregroundColor(.black)
                                                  .fontWeight(.bold)
                                          }
                                          
                                          Spacer()
                                          
                                          Button(action: {
                                              // Action for add button
                                          }) {
                                              Image(systemName: "plus")
                                                  .foregroundColor(.white)
                                                  .frame(width: 30, height: 30)
                                                  .background(Color.blue)
                                                  .clipShape(Circle())
                                                  .padding(.top, 50)
                                          }
                                      }
                                      .padding([.top], 5)
                                  }
                                  .padding(10)
                                  .background(Color.white)
                                  .cornerRadius(10)
                                  .shadow(radius: 2)
                                  .frame(width: 180)
                            
                        }
                    }
                    .padding()
                }
    }
}

#Preview {
    HomeProducts()
}
