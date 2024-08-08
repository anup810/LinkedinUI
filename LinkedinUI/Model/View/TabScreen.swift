//
//  TabScreen.swift
//  LinkedinUI
//
//  Created by Anup Saud on 2024-08-08.
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        TabView{
            HomeScreen()
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            MyNetworkScreen()
                .tabItem{
                    Image(systemName: "person.2.fill")
                    Text("MyNetwork")
                }
            Text("Post")
                .tabItem {
                    Image(systemName: "plus.app.fill")
                    Text("Post")
                }
            Text("Notification")
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                    Text("Notifications")
                }
        }
    }
}

#Preview {
    TabScreen()
}
