//
//  AirbnbListingsView.swift
//  AirbnbApp
//
//  Created by Uri on 5/12/23.
//

import SwiftUI

struct AirbnbListingsView: View {
    
    @StateObject var viewModel = AirbnbListingsViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.listings) { listing in
                NavigationLink(destination: Text("Hello"), label: {
                    AirbnbListingCardView(model: listing)
                })
            }
        }
        .onAppear {
            viewModel.fetchListings()
        }
    }
}

#Preview {
    AirbnbListingsView()
}
