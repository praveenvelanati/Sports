//
//  VenueEndpoint.swift
//  Sports
//
//  Created by praveen velanati on 10/25/23.
//

import Foundation
import Networker

struct VenueEndpoint: HTTPEndpoint {
    
    var queryItems: [URLQueryItem]? {
       [URLQueryItem(name: "api_key", value: "kxhazs94xng2btqz8sv9nq6w")]
    }
    var scheme: String = "https"
    var host: String = "api.sportradar.us"
    var path: String = "/mlb/trial/v7/en/league/venues.json"
    var body: [String : String]?
    var headers: [String : String]?
    var method: RequestMethod = .get
}
