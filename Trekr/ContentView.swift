//
//  ContentView.swift
//  Trekr
//
//  Created by Emre Yilmaz on 2024-02-18.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()

            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)

            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)

            Text(location.description)
                .padding(.horizontal)

            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)

            Text(location.more)
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
    
    
}

#Preview {
    ContentView(location: Locations().primary)
}

