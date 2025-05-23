//
//  ExploreView.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { item in
                        Rectangle()
                            .frame(height: 400)
                            .clipShape(.rect(cornerRadius: 10))
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
