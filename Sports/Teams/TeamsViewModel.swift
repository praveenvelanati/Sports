//
//  TeamsViewModel.swift
//  Sports
//
//  Created by praveen velanati on 11/3/23.
//

import Foundation
import Combine

class TeamsViewModel: ObservableObject {
    @Published var teams = [Team]()
    let teamsClient: TeamClient = .init()
    
    @MainActor
    func getTeams() async {
        if let teams = await teamsClient.getTeams() {
            self.teams = teams
        }
    }
}
