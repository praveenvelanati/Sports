//
//  TeamRoster.swift
//  Sports
//
//  Created by praveen velanati on 11/3/23.
//

import SwiftUI

struct TeamRoster: View {
    var team: Team
    var body: some View {
        List {
            ForEach(team.positions ?? []) { position in
                Section(position.desc ?? "") {
                    ForEach(position.players ?? []) { player in
                        if let firstName = player.firstName, let lastName = player.lastName {
                            Text(firstName + " " + lastName)
                        } else {
                            Text(player.preferredName ?? "N/A")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    TeamRoster(team: .init(id: "", name: "", market: "", abbr: "", positions: nil))
}
