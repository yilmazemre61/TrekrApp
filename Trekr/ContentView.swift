//
//  ContentView.swift
//  Trekr
//
//  Created by Emre Yilmaz on 2024-02-18.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    @StateObject var locations = Locations()
    var body: some View {
        TabView{
            NavigationStack{
                ScrollView {
                    Image(location.heroPicture)
                        .resizable()
                        .scaledToFit()
                    
                    Text(location.name)
                        .font(.title)
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
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Discover")
            }
            NavigationStack{
                WorldView()
            }
            .tabItem {
                Image(systemName: "location.circle")
                Text("Locations")
            }
        }
        .environmentObject(locations)
    }
    
    
}

#Preview {
    ContentView(location: Locations().primary)
}

