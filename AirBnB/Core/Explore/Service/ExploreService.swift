//
//  ExploreService.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/25.
//

import Foundation

class ExploreService {
    
    static let shared = ExploreService()
    
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
