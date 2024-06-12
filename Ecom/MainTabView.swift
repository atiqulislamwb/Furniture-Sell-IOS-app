//
//  MainTabView.swift
//  Ecom
//
//  Created by Atiqul Islam on 11/6/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView(){
            HomeView()
                .tabItem { Label ("Home" , systemImage: "house") }
            SearchView()
                .tabItem { Label ("Search" , systemImage: "magnifyingglass.circle.fill") }
            NotificationView()
                .tabItem { Label ("Notification" , systemImage: "bell") }
            CartView()
                .tabItem { Label ("Cart" , systemImage: "bag") }
            ProfileView()
                .tabItem { Label ("Explore" , systemImage: "person") }
        }
        .tint(.blue)
   
        
    }
}

#Preview {
    MainTabView()
}
