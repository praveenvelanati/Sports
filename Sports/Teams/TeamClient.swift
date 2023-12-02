//
//  TeamClient.swift
//  Sports
//
//  Created by praveen velanati on 11/3/23.
//

import Foundation
import Networker

struct TeamClient: HTTPClient {
    
    func getTeams() async -> [Team]? {
        let teamsEndpoint = TeamEndpoint()
        let leagueDepthResult = await requestResponse(endPoint: teamsEndpoint, responseModel: LeagueDepth.self)
        switch leagueDepthResult {
        case .success(let leagueDepth):
            return leagueDepth.teams
        case .failure(let error):
            print(error)
            return nil
        }
    }
}
