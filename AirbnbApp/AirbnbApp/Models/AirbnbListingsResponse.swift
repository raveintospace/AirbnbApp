//
//  AirbnbListingsResponse.swift
//  AirbnbApp
//
//  Created by Uri on 5/12/23.
//

import Foundation

struct AirbnbListingsResponse: Codable {
    
    let total_count: Int
    let results: [AirbnbListing]
}

