//
//  DeveloperPreview.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/24.
//

import Foundation

class DeveloperPreview {
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Carrington Manyuchi",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 1800,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "123 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Carrington Johnson",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 2500,
            latitude: 25.7650,
            longitude: -80.1936,
            imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "123 Main St",
            city: "Miami",
            state: "Florida",
            title: "Beautiful Miami apartment in downtown Brickell",
            rating: 4.16,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Carrington Johnson",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 2300,
            latitude: 34.2,
            longitude: -118.0426,
            imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "123 Main St",
            city: "Los Angeles",
            state: "California",
            title: "Beautiful Loss Angeles home in Malibu",
            rating: 4.65,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .pool],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Kamila Johnson",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 1600,
            latitude: 34.1,
            longitude: -118.1426,
            imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "123 Main St",
            city: "Los Angeles",
            state: "California",
            title: "Beautiful Loss Angeles home in Malibu",
            rating: 4.65,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .kitchen, .laundry],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Kamila Johnson",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 2300,
            latitude: 34.2,
            longitude: -118.0426,
            imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "123 Main St",
            city: "Los Angeles",
            state: "California",
            title: "Beautiful Loss Angeles home in Malibu",
            rating: 4.65,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .pool, .kitchen, .laundry],
            type: .apartment
        )
    ]
}
