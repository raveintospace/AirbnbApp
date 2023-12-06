//
//  AirbnbListingCardView.swift
//  AirbnbApp
//
//  Created by Uri on 5/12/23.
//

import SwiftUI

struct ListingCardView: View {
    let model: AirbnbListing
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: model.thumbnailURL ?? ""))
                .frame(width: 100, height: 100)
                .scaledToFit()
                .clipped()
            
            VStack {
                Text(model.name ?? "Listing")
                    .lineLimit(1)
                    .font(.title3)
                    .bold()
                
                Text(model.description ?? "Listing")
                    .lineLimit(3)
                    .font(.body)
                    .foregroundColor(Color(.secondaryLabel))
            }
        }
    }
}
