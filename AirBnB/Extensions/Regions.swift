//
//  Regions.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/25.
//

import Foundation
import CoreLocation
import SwiftUI

extension CLLocationCoordinate2D {
    static let cityCoordinates: [String: CLLocationCoordinate2D] = [
        "losAngeles": CLLocationCoordinate2D(latitude: 34.052234, longitude: -118.243685),
        "miami": CLLocationCoordinate2D(latitude: 25.761760, longitude: -80.191790),
        "mutare": CLLocationCoordinate2D(latitude: -18.300000, longitude: 32.300000),
        "fourways": CLLocationCoordinate2D(latitude: -18.300000, longitude: 32.300000),
        "sandton": CLLocationCoordinate2D(latitude: -26.166667, longitude: 28.250000),
        "chikanga":  CLLocationCoordinate2D(latitude: -16.483333, longitude: 31.166667),
        "borrowdale": CLLocationCoordinate2D(latitude: -33.866667, longitude: 151.200000),
        "kemptonPark": CLLocationCoordinate2D(latitude: -33.866667, longitude: 151.200000)
    ]
    
    static func regionForCity(_ name: String) -> CLLocationCoordinate2D {
        //let key = name.lowercased().replacingOccurrences(of: " ", with: "")
        return cityCoordinates[name] ??  CLLocationCoordinate2D(latitude: 34.052234, longitude: -118.243685)
    }
}

