//
//  SluMap.swift
//  nathan first app
//
//  Created by Nathan Francis on 2021-04-27.
//  Copyright © 2021 Nathan Francis. All rights reserved.
//

import SwiftUI
import MapKit
import CoreLocation


struct MapViewUI: UIViewRepresentable {

    func makeUIView(context: Context) -> MKMapView {
         MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        //Map display with annotations
        
            let coordinate = CLLocationCoordinate2D(
                latitude: 13.91, longitude: -60.9754)
            let span = MKCoordinateSpan(latitudeDelta: 0.35, longitudeDelta: 0.35)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            view.setRegion(region, animated: true)
            view.mapType = .satellite

        let pitons = MKPointAnnotation()
        let pigeon = MKPointAnnotation()
        let jade_mountain = MKPointAnnotation()
        let volcano = MKPointAnnotation()
        let diamon_falls = MKPointAnnotation()
        let bird = MKPointAnnotation()
        let enbas = MKPointAnnotation()
        let marine = MKPointAnnotation()
        
        pitons.coordinate = CLLocationCoordinate2D(latitude: 13.831161, longitude: -61.066372)
        pigeon.coordinate = CLLocationCoordinate2D(latitude: 14.092627, longitude: -60.961624)
        jade_mountain.coordinate = CLLocationCoordinate2D(latitude: 13.864429, longitude: -61.075632)
        volcano.coordinate = CLLocationCoordinate2D(latitude: 13.838198, longitude: -61.046906)
        diamon_falls.coordinate = CLLocationCoordinate2D(latitude: 13.853139, longitude: -61.048935)
        bird.coordinate = CLLocationCoordinate2D(latitude: 13.965011, longitude: -61.027380)
        enbas.coordinate = CLLocationCoordinate2D(latitude: 13.91, longitude: -61.9754)
        marine.coordinate = CLLocationCoordinate2D(latitude: 13.864794, longitude: -61.077816)


        pitons.title = "The Pitons"
        pigeon.title = "Pigeon Island"
        jade_mountain.title = "Tet Paule"
        volcano.title = "Sulphur Springs"
        diamon_falls.title = "Diamond Falls"
        bird.title = "Marigot Bay"
        enbas.title = "Enbas Saut Waterfall"
        marine.title = "Anse Chastanet Marine"

        view.addAnnotation(pitons)
        view.addAnnotation(pigeon)
        view.addAnnotation(jade_mountain)
        view.addAnnotation(volcano)
        view.addAnnotation(diamon_falls)
        view.addAnnotation(bird)
        view.addAnnotation(enbas)
        view.addAnnotation(marine)


        //User current location

    }
}
struct SluMap: View {
    
    var body: some View {
            VStack {
                MapViewUI()
            }.aspectRatio(contentMode: .fill)
             .edgesIgnoringSafeArea(.all)

    }
}


struct SluMap_Previews: PreviewProvider {
    static var previews: some View {
        SluMap()
    }
}
