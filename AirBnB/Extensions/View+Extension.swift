//
//  View+Extension.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/24.
//

import Foundation
import SwiftUI

extension View {
    func centerHorizontally() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
}
