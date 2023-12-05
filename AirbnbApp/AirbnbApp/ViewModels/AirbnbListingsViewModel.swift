//
//  AirbnbListingsViewModel.swift
//  AirbnbApp
//
//  Created by Uri on 5/12/23.
//

import Foundation

class AirbnbListingsViewModel: ObservableObject {
    
    private let service = APIService()
    
    @Published var listings: [AirbnbListing] = []
    
    public func fetchListings() {
        service.getListings { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let models):
                self.listings = models
                debugPrint("fato")
                debugPrint(listings.count)
            case .failure:
                break
            }
        }
    }
                        
}
