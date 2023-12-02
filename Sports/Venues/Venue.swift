//
//  Venue.swift
//  Sports
//
//  Created by praveen velanati on 10/25/23.
//

import Foundation

struct Venue: Codable, Identifiable {
    let name: String?
    let capacity: Int?
    let surface: String?
    let address: String?
    let city: String?
    let state: String?
    let zip: String?
    let country: String?
    let id: String?
}

struct VenuesModel: Codable {
    let venues: [Venue]
}
