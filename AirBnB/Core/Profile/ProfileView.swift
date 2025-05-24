//
//  ProfileView.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //MARK: - Profil Login View
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in to start planning your next trip")
                    
                }
                
                ButtonView(
                    buttonTitle:  "Log in",
                    buttonTextColor: .white,
                    buttonTextFont: .subheadline,
                    buttonWidth: 360,
                    buttonHeight: 48,
                    buttonBackgroundColor: .pink
                )
                
                HStack {
                    Text("Do not have an account?")
                    Text("Sign up")
                        .foregroundColor(.blue)
                        .underline()
                        .font(.footnote)
                }
            }
            
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
        }
        .padding()
    }
       
}

#Preview {
    ProfileView()
}
