//
//  TeamsView.swift
//  Sports
//
//  Created by praveen velanati on 11/3/23.
//

import SwiftUI

struct TeamsView: View {
   @ObservedObject var teamsViewModel = TeamsViewModel()
    var body: some View {
        NavigationStack {
            List {
                ForEach(teamsViewModel.teams) { team in
                    NavigationLink {
                        TeamRoster(team: team)
                    } label: {
                        Text((team.market ?? "N/A")  +  " " + (team.name ??  "N/A"))
                    }
                }
            }.task {
                await teamsViewModel.getTeams()
            }
            .navigationTitle("Major Leage Baseball")
        }
    }
}

#Preview {
    TeamsView()
}
