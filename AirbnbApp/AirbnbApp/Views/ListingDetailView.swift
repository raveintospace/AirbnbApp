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
        ScrollView(.vertical) {
            AsyncImage(url: URL(string: model.xlPictureURL ?? ""))
                .aspectRatio(contentMode: .fill)
                .clipped()
            
            Text("Name: \(model.name ?? "")")
            Text("Description: \(model.description ?? "")")
            Text("Summary: \(model.summary ?? "")")
            Text("House rules: \(model.houseRules ?? "")")
            Text("Space: \(model.space ?? "")")
        }
    }
}
