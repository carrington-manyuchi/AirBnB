//
//  ButtonView.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/24.
//

import SwiftUI

struct ButtonView: View {
    
    let buttonTitle: String
    let buttonTextColor: Color
    let buttonTextFont: Font?
    let buttonWidth: CGFloat?
    let buttonHeight: CGFloat?
    let buttonBackgroundColor: Color?
    
    var body: some View {
        Button {
            //MARK: - TODO
            print("Log in")
        } label: {
            Text(buttonTitle)
                .foregroundStyle(buttonTextColor)
                .font(buttonTextFont)
                .fontWeight(.semibold)
                .frame(width: buttonWidth, height: buttonHeight)
                .background(buttonBackgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }    }
}

#Preview {
    ButtonView(buttonTitle:  "Log in", buttonTextColor: .white, buttonTextFont: .subheadline, buttonWidth: 360, buttonHeight: 48, buttonBackgroundColor: .pink)
}
