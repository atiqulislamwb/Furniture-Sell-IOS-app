//
//  CartView.swift
//  Ecom
//
//  Created by Atiqul Islam on 11/6/24.
//

import SwiftUI

struct CartProduct: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let category: String
    var quantity: Int
}

struct CartView: View {
    
    @State private var cartProducts = [
        CartProduct(image: "f1", title: "Product 1", category: "Category 1", quantity: 1),
        CartProduct(image: "f2", title: "Product 2", category: "Category 2", quantity: 1),
        CartProduct(image: "f3", title: "Product 3", category: "Category 3", quantity: 1),
        CartProduct(image: "f4", title: "Product 3", category: "Category 3", quantity: 1),
        CartProduct(image: "f5", title: "Product 3", category: "Category 3", quantity: 1)
      ]
      
    
     func deleteItems(at offsets: IndexSet) {
           cartProducts.remove(atOffsets: offsets)
       }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach($cartProducts) { $product in
                        HStack {
                            // Product Image
                            Image(product.image)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding(.trailing, 8)
                            
                            // Product Details
                            VStack(alignment: .leading) {
                                Text(product.title)
                                    .font(.headline)
                                Text(product.category)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            // Quantity and Buttons
                            HStack {
                                Button(action: {
                                    if product.quantity > 1 {
                                        product.quantity -= 1
                                    }
                                }) {
                                    Image(systemName: "minus.circle")
                                        .foregroundColor(.red)
                                }
                                
                                Text("\(product.quantity)")
                                    .padding(.horizontal, 8)
                                
                                Button(action: {
                                    product.quantity += 1
                                }) {
                                    Image(systemName: "plus.circle")
                                        .foregroundColor(.green)
                                }
                            }
                        }
                        .padding(.vertical, 8)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(PlainListStyle())
                
                // Checkout Button
                Button(action: {
                    // Action for checkout
                    print("Checkout tapped")
                }) {
                    Text("Checkout")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .padding(.bottom, 20)
                }
            }
            .navigationTitle("Cart")
            .navigationBarItems(trailing: EditButton())
        }
    }
}

#Preview {
    CartView()
}
