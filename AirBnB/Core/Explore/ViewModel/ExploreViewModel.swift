//
//  ExploreViewModel.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/25.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation: String = ""
    private var listingsCopy: [Listing] = [Listing]()

    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        Task {
            await fetchListings()
        }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
            self.listingsCopy = self.listings
        } catch {
            print("Error fetching listings: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
        let filteredListings = listings.filter ({
            $0.city.lowercased() == searchLocation.lowercased() || $0.state.lowercased() == searchLocation.lowercased()
        })
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings
    }
}
