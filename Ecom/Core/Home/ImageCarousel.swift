//
//  ImageCarousel.swift
//  Ecom
//
//  Created by Atiqul Islam on 12/6/24.
//

import SwiftUI

struct ImageCarousel: View {
    var images = [
         "f1",
         "f2",
         "f3",
      
       ]
       var body: some View {
           TabView{
               ForEach(images, id:\.self ){ image in
                   Image(image)
                       .resizable()
                       .scaledToFill()
                   
               }
               
           }
           
           .tabViewStyle(.page)
           
           
       }
   }

#Preview {
    ImageCarousel()
}
