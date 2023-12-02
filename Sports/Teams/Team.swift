//
//  Team.swift
//  Sports
//
//  Created by praveen velanati on 11/3/23.
//

import Foundation

struct Team: Codable, Identifiable {
    let id: String?
    let name: String?
    let market: String?
    let abbr: String?
    let positions: [Position]?
}

struct Position: Codable, Identifiable {
    let name: String?
    let desc: String?
    let players: [Player]?
    let id: UUID = .init()
}

struct Player: Codable, Identifiable {
    let id: String?
    let status: String?
    let position: String?
    let primaryPosition: String?
    let firstName: String?
    let lastName: String?
    let preferredName: String?
    let jerseyNumber: String?
    let depth: Int?
    let fullName: String?
    let height: String?
    let weight: String?
}

struct LeagueDepth: Codable {
    let teams: [Team]?
}
