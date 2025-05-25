//
//  ExploreViewModel.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/25.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
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
        } catch {
            print("Error fetching listings: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation(_ location: String) {
        let filteredListings = listings.filter ({
            $0.city.lowercased() == location.lowercased() || $0.state.lowercased() == location.lowercased()
        })
        self.listings = filteredListings.isEmpty ? listings : filteredListings
    }
}
