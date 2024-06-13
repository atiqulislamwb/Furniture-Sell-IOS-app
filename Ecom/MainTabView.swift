//
//  MainTabView.swift
//  Ecom
//
//  Created by Atiqul Islam on 11/6/24.
//

import SwiftUI

struct MainTabView: View {
    
       @State private var notificationCount: Int = 2
       @State private var cartItemCount: Int = 5
       
    
    var body: some View {
          TabView {
              HomeView()
                  .tabItem {
                      Label("Home", systemImage: "house")
                  }
              SearchView()
                  .tabItem {
                      Label("Search", systemImage: "magnifyingglass.circle.fill")
                  }
              NotificationView()
                  .tabItem {
                      Label("Notification", systemImage: "bell")
                  }
                  .badge(notificationCount)
              CartView()
                  .tabItem {
                      Label("Cart", systemImage: "bag")
                  }
                  .badge(cartItemCount)
                
              ProfileView()
                  .tabItem {
                      Label("Profile", systemImage: "person")
                  }
          }
          .tint(.blue)
      }
  }

#Preview {
    MainTabView()
}
