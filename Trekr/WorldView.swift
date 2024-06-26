//
//  WorldView.swift
//  Trekr
//
//  Created by Emre Yilmaz on 2024-02-19.
//

import MapKit
import SwiftUI


struct WorldView: View {
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: locations.places) {
            location in
            MapAnnotation(coordinate:
                CLLocationCoordinate2D(latitude:
                               location.latitude,
                                       longitude: location.longitude)) {
                NavigationLink(destination:
                                ContentView(location: location)) {
                    Image(location.country)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }
            }
        }
        .navigationTitle("Locations")
    }
}
    
#Preview {
    WorldView().environmentObject(Locations())
}
    
