//
//  ListingImageCarouselView.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/23.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let imageURLs: [String]
    
    var body: some View {
        TabView {
            ForEach(imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)    }
}

#Preview {
    ListingImageCarouselView(imageURLs: [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ])
}

