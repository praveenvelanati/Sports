//
//  VenueViewModel.swift
//  Sports
//
//  Created by praveen velanati on 10/25/23.
//

import Foundation
import Networker
import Combine

class VenueViewModel: ObservableObject {
    @Published var venues: [Venue] = []
    let venueClient: VenueClient = VenueClient()
    
    @MainActor
    func getVenues() async {
       venues = await venueClient.getVenues()
    }
}
