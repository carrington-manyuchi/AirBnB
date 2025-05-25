//
//  NumberFormatter.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/25.
//

import Foundation

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
