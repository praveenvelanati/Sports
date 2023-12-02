//
//  SportsLeague.swift
//  Sports
//
//  Created by praveen velanati on 11/4/23.
//

import Foundation
import SwiftUI

struct SportsLeague: Identifiable {
    let id = UUID()
    let abbr: String
    let name: String
    @ViewBuilder var view: some View {
        switch abbr {
        case "MLB":
            TeamsView()
        default:
            Text("Coming soon")
        }
    }
}
