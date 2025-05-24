//
//  StarRatingView.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/23.
//

import SwiftUI

struct StarRatingView: View {
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            Text("4.86")
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    StarRatingView()
}
