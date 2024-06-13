//
//  NotificationView.swift
//  Ecom
//
//  Created by Atiqul Islam on 11/6/24.
//

import SwiftUI

struct Notification: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let timestamp: String
}

struct NotificationView: View {
    
    
    @State private var notifications = [
           Notification(title: "Welcome!", message: "Thanks for signing up.", timestamp: "Just now"),
           Notification(title: "Update Available", message: "A new version of the app is available. Please update.", timestamp: "1 hour ago"),
           Notification(title: "Reminder", message: "Don't forget to complete your profile.", timestamp: "Yesterday"),
           Notification(title: "Special Offer", message: "Get 20% off your next purchase.", timestamp: "2 days ago"),
           Notification(title: "Exclusive Offer", message: "Get 20% off your next purchase.", timestamp: "3 days ago"),
           Notification(title: "Black Friday", message: "Get 20% off your next purchase.", timestamp: "3 days ago"),
           Notification(title: "Summer Effect", message: "Get 20% off your next purchase.", timestamp: "3 days ago")
       ]
       
    
    var body: some View {
        NavigationView {
            List(notifications) { notification in
                VStack(alignment: .leading, spacing: 5) {
                    Text(notification.title)
                        .font(.headline)
                    Text(notification.message)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text(notification.timestamp)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.top, 2)
                }
                .padding(.vertical, 8)
            }
            .navigationTitle("Notifications")
        }
    }
}

#Preview {
    NotificationView()
}
