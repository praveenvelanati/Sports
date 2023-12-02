//
//  VenueClient.swift
//  Sports
//
//  Created by praveen velanati on 10/25/23.
//

import Foundation
import Networker

struct VenueClient: HTTPClient {
    
    func getVenues() async -> [Venue] {
        let venueEndPoint = VenueEndpoint()
        let venues =  await requestResponse(endPoint: venueEndPoint, responseModel: VenuesModel.self)
        switch venues {
        case .success(let venuesModel):
            print(venuesModel.venues)
            return venuesModel.venues
        case .failure(let error):
            print(error)
        }
        return []
    }
    
    
}
