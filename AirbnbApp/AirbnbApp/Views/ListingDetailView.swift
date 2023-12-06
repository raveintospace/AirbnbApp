//
//  AirbnbDetailView.swift
//  AirbnbApp
//
//  Created by Uri on 5/12/23.
//

import SwiftUI

struct ListingDetailView: View {
    let model: AirbnbListing
    
    var body: some View {
        VStack(alignment: .leading) {
            GeometryReader { proxy in
                ScrollView(.vertical) {
                    AsyncImage(url: URL(string: model.xlPictureURL ?? ""))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: proxy.frame(in: .global).width, height: proxy.frame(in: .global).height)
                        .clipped()
                    
                    Text(model.name ?? "")
                        .bold()
                        .padding()
                    
                    if let price = model.price {
                        Text("Nightly Rate: \(price.formatted(.currency(code: "USD")))")
                    }
                    
                    Text("Description: \(model.description ?? "")")
                        .padding()
                    Text("Summary: \(model.summary ?? "")")
                        .padding()
                    Text("House Rules: \(model.houseRules ?? "")")
                        .padding()
                    Text("Space: \(model.space ?? "")")
                        .padding()
                    
                    Text("About Your Host")
                        .font(.title2)
                        .bold()
                    
                    HStack {
                        AsyncImage(url: URL(string: model.hostThumbnailURL ?? ""))
                            .frame(width: 75, height: 75)
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                        
                        Text(model.hostName ?? "")
                            .bold()
                    }
                    .padding()
                    
                    Text("Hosting since: \(model.hostSince ?? "")")
                }
                .frame(maxWidth: proxy.frame(in: .local).width)
            }
        }
        .navigationTitle(model.name ?? "Listing")
    }
}
