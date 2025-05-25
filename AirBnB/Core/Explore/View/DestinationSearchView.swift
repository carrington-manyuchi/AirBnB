//
//  DestinationSearchView.swift
//  AirBnB
//
//  Created by Manyuchi, Carrington C on 2025/05/24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @ObservedObject var viewModel: ExploreViewModel
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate: Date  = Date()
    @State private var endDate: Date  = Date()
    @State private var numGuests = 0
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation(.snappy) {
                        viewModel.updateListingsForLocation()
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                Spacer()
                if !viewModel.searchLocation.isEmpty {
                    Button {
                        viewModel.searchLocation = ""
                        viewModel.updateListingsForLocation()
                    } label: {
                        Text("Clear")
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()

            VStack(alignment: .leading) {
                
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destinations", text: $viewModel.searchLocation)
                            .font(.subheadline)
                            .submitLabel(.search)
                            .autocorrectionDisabled()
                            .onSubmit {
                                viewModel.updateListingsForLocation()
                                show.toggle()
                            }
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    CollapsedPickerView(title: "Where", description: "destination")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            //MARK: - Date SelectionView
            VStack(alignment: .leading) {
                if selectedOption == .dates {
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                } else {
                    CollapsedPickerView(title: "When", description: "Add dates")

                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                }
            }

            //MARK: - Num guests View
            VStack {
                if selectedOption == .guests {
                        Text("Who's coming?")
                            .font(.title2)
                            .fontWeight(.semibold)
                    Stepper {
                        Text(" \(numGuests) Adult(s)")
                    } onIncrement: {
                        numGuests += 1
                    } onDecrement: {
                        guard numGuests > 0 else { return }
                        numGuests -= 1
                    }
                } else {
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }
        }
        Spacer()
    }
}

#Preview {
    DestinationSearchView(show: .constant(false), viewModel: ExploreViewModel(service: ExploreService()))
}

struct CollapsibleDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}
