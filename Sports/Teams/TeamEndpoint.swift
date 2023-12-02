//
//  TeamEndpoint.swift
//  Sports
//
//  Created by praveen velanati on 11/3/23.
//

import Foundation
import Networker

struct TeamEndpoint: HTTPEndpoint {
    var scheme: String = "https"
    var host: String = "api.sportradar.us"
    var path: String = "/mlb/trial/v7/en/league/depth_charts.json"
    var body: [String : String]?
    var headers: [String : String]?
    var method: RequestMethod = .get
    var queryItems: [URLQueryItem]? {
        [URLQueryItem(name: "api_key", value: "kxhazs94xng2btqz8sv9nq6w")]
    }
    
    
}
