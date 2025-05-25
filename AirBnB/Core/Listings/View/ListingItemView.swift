//
//  ListingView.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/23.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            //MARK: - Images

            ListingImageCarouselView(imageURLs: listing.imageURLs)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //MARK: - listing details
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mins away")
                        .foregroundStyle(.gray)
                    Text("May 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStackLayout(spacing: 4) {
                        Text("\(listing.pricePerNight  as NSNumber, formatter: NumberFormatter.currency)")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                //MARK: - rating
                StarRatingView(rating: listing.rating)
            }
            .font(.footnote)
            
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings.first!)
}
