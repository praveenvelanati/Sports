//
//  ContentView.swift
//  Sports
//
//  Created by praveen velanati on 10/25/23.
//

import SwiftUI

struct ContentView: View {
    var sportsLeagues: [SportsLeague] = [.init(abbr: "MLB", name: "Major league baseball"),
                                         .init(abbr: "NFL", name: "National Football League"),
                                         .init(abbr: "NBA", name: "National Basketball Assoication")]
    var body: some View {
        NavigationStack {
            List(sportsLeagues) { league in
                NavigationLink {
                    league.view
                } label: {
                    Text(league.name)
                }
            }.navigationTitle("Sports")
        }
    }
}

#Preview {
    ContentView()
}
