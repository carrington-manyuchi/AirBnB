//
//  WishListView.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/24.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to see your WishLists")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists once you've logged in")
                        .font(.footnote)
                }
                
                ButtonView(
                    buttonTitle: "Log in",
                    buttonTextColor: .white,
                    buttonTextFont: .subheadline,
                    buttonWidth: 360,
                    buttonHeight: 48,
                    buttonBackgroundColor: .pink
                )
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishListView()
}
