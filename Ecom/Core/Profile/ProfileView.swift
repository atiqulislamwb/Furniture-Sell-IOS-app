//
//  ProfileView.swift
//  Ecom
//
//  Created by Atiqul Islam on 11/6/24.
//

import SwiftUI

struct ProfileView: View {
    
      @State private var name = "Atiqul Islam"
      @State private var email = "atiqulislamrussell0@gmail.com"
      @State private var phone = "+8801937547204"
      @State private var location = "Jashore, Khulna, Bangladesh"
      @State private var showLogoutConfirmation = false
    
    var body: some View {
        NavigationView {
                    VStack(spacing: 20) {
                        // Profile Image
                        Image("profile-pic-2")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.blue)
                            .padding(.top, 40)
                        
                        // Name
                        Text(name)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        // Email
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(.gray)
                            Text(email)
                                .foregroundColor(.gray)
                        }
                        
                        // Phone
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.gray)
                            Text(phone)
                                .foregroundColor(.gray)
                        }
                        
                        // Location
                        HStack {
                            Image(systemName: "location")
                                .foregroundColor(.gray)
                            Text(location)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        // Logout Button
                                       Button(action: {
                                           showLogoutConfirmation = true
                                       }) {
                                           Text("Logout")
                                               .font(.headline)
                                               .foregroundColor(.white)
                                               .padding()
                                               .frame(maxWidth: .infinity)
                                               .background(Color.red)
                                               .cornerRadius(10)
                                               .padding(.horizontal)
                                       }
                                       .padding(.bottom, 20)
                                       .alert(isPresented: $showLogoutConfirmation) {
                                           Alert(
                                            title: Text("Logout"),
                                            message: Text("Are you sure you want to log out?"),
                                            primaryButton: .destructive(Text("Yes")) {
                                                // Action for confirming logout
                                                print("User logged out")
                                            },
                                            secondaryButton: .cancel(Text("No"))
                                           )
                                       }
                    }
                    .navigationTitle("Profile")
                }
    }
}

#Preview {
    ProfileView()
}
