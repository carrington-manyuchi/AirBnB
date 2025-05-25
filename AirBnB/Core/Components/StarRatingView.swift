//
//  StarRatingView.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/23.
//

import SwiftUI

struct StarRatingView: View {
    let rating: Double

    
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            Text("\(rating, specifier: "%.1f")")

        }
        .foregroundStyle(.black)
    }
}

#Preview {
    StarRatingView(rating: 4.5)
}
