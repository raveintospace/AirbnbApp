//
//  AirbnbListingsView.swift
//  AirbnbApp
//
//  Created by Uri on 5/12/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = AirbnbListingsViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.listings.isEmpty {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                } else {
                    List(viewModel.listings) { listing in
                        NavigationLink(destination: ListingDetailView(model: listing), label: {
                            ListingCardView(model: listing)
                        })
                    }
                }
            }
            .navigationTitle("Airbnb")
        }
        .onAppear {
            viewModel.fetchListings()
        }
    }
}

#Preview {
    HomeView()
}
