//
//  ListingView.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/23.
//

import SwiftUI

struct ListingItemView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            //MARK: - Images

            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //MARK: - listing details
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Fourways, Sandton")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("Dainfern  Broadacres")
                        .foregroundStyle(.gray)
                    Text("May 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStackLayout(spacing: 4) {
                        Text("R12567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                //MARK: - rating
                StarRatingView()
            }
            .font(.footnote)
            
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
