//
//  AirbnbListing.swift
//  AirbnbApp
//
//  Created by Uri on 5/12/23.
//

import Foundation

/*
 
 URL: https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/airbnb-listings/records?limit=100&refine=city%3A%22New%20York%22&refine=room_type%3A%22Entire%20home%2Fapt%22
 
 JSON Response:

 // MARK: - AirbnbListing
 struct AirbnbListing {
     let id: String?
     let listingURL: String?
     let scrapeID, lastScraped, name, summary: String?
     let space, description, experiencesOffered, neighborhoodOverview: String?
     let notes: NSNull?
     let transit, access, interaction, houseRules: String?
     let thumbnailURL, mediumURL: String?
     let pictureURL: PictureURL?
     let xlPictureURL: String?
     let hostID: String?
     let hostURL: String?
     let hostName, hostSince, hostLocation, hostAbout: String?
     let hostResponseTime, hostResponseRate, hostAcceptanceRate: NSNull?
     let hostThumbnailURL, hostPictureURL: String?
     let hostNeighbourhood: NSNull?
     let hostListingsCount, hostTotalListingsCount: Int?
     let hostVerifications: [String]?
     let street: String?
     let neighbourhood: NSNull?
     let neighbourhoodCleansed, neighbourhoodGroupCleansed, city, state: String?
     let zipcode, market, smartLocation, countryCode: String?
     let country, latitude, longitude, propertyType: String?
     let roomType: String?
     let accommodates, bathrooms, bedrooms, beds: Int?
     let bedType: String?
     let amenities: [String]?
     let squareFeet: NSNull?
     let price: Int?
     let weeklyPrice, monthlyPrice: NSNull?
     let securityDeposit, cleaningFee, guestsIncluded, extraPeople: Int?
     let minimumNights, maximumNights: Int?
     let calendarUpdated: String?
     let hasAvailability: NSNull?
     let availability30, availability60, availability90, availability365: Int?
     let calendarLastScraped: String?
     let numberOfReviews: Int?
     let firstReview, lastReview: String?
     let reviewScoresRating, reviewScoresAccuracy, reviewScoresCleanliness, reviewScoresCheckin: Int?
     let reviewScoresCommunication, reviewScoresLocation, reviewScoresValue: Int?
     let license, jurisdictionNames: NSNull?
     let cancellationPolicy: String?
     let calculatedHostListingsCount: Int?
     let reviewsPerMonth: Double?
     let geolocation: Geolocation?
     let features: [String]?
 }

 // MARK: - Geolocation
 struct Geolocation {
     let lon, lat: Double?
 }

 // MARK: - PictureURL
 struct PictureURL {
     let thumbnail: Bool?
     let filename, format: String?
     let width: Int?
     let mimetype, etag, id, lastSynchronized: String?
     let colorSummary: [String]?
     let height: Int?
     let url: String?
 }

*/

struct AirbnbListing: Codable {
    
    let id: String
    let listingURL: String
    let name: String
    let summary: String
    let space: String
    let description: String
    let houseRules: String
    let thumbnailURL: String
    let mediumURL: String
    let xlPictureURL: String
    let neighbourhood: String
    let amenities: [String]
    let price: Int
    
    // Host details
    let hostName: String
    let hostSince: String
    let hostThumbnailURL: String
    let hostPictureURL: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, summary, space, description, neighbourhood, amenities, price
        case listingURL = "listing_url"
        case houseRules = "house_rules"
        case thumbnailURL = "thumbnail_url"
        case mediumURL = "medium_url"
        case xlPictureURL = "xl_picture_url"
        case hostName = "host_name"
        case hostSince = "host_since"
        case hostThumbnailURL = "host_thumbnail_url"
        case hostPictureURL = "host_picture_url"
    }
    
}
