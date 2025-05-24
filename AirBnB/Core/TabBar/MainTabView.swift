//
//  MainTabView.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            WishListView()
                .tabItem{
                    Label("Wishlist", systemImage: "heart.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
        .tabViewStyle(.tabBarOnly)
    }
}

#Preview {
    MainTabView()
}


