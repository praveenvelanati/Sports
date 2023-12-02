//
//  VenuesView.swift
//  Sports
//
//  Created by praveen velanati on 10/25/23.
//

import SwiftUI

struct VenuesView: View {
    @ObservedObject var venueViewModel: VenueViewModel
    var body: some View {
        List(content: {
            ForEach(venueViewModel.venues) { venue in
                VStack(alignment: .leading) {
                    Text(venue.name ?? "Empty")
                    Text("Capacity: \(venue.capacity ?? 0)")
                }
            }
        })
        .task {
            await venueViewModel.getVenues()
        }
    }
}

#Preview {
    VenuesView(venueViewModel: .init())
}
