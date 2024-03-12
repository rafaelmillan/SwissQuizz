//
//  MapView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 11.02.2024.
//

import SwiftUI
import SwisstopoMapSDK

struct MapView: View {
    let coordinates: Coordinates
    
    var body: some View {
        VStack {
            SwissTopoMapView(coordinates: coordinates)
            
            HStack {
                Spacer()
                Text("©swisstopo")
                    .foregroundStyle(.secondary)
                    .font(.caption)
                    .padding([.trailing])
            }
        }
        .disabled(true)
        .transition(.asymmetric(
            insertion: .move(edge: .trailing),
            removal: .move(edge: .leading)
        ))
        .edgesIgnoringSafeArea(.all)
    }
}

struct SwissTopoMapView: UIViewRepresentable {
    let coordinates: Coordinates
    
    func makeUIView(context: Context) -> SwisstopoMapSDK.SwisstopoMapView {
        let mapView = SwisstopoMapView(baseLayerType: .SWISSIMAGE)
        mapView.camera.move(toCenterPosition: .init(systemIdentifier: MCCoordinateSystemIdentifiers.epsg4326(),
                                                    x: coordinates.longitude,
                                                    y: coordinates.latitude,
                                                    z: 0), animated: false)
        mapView.camera.setMinZoom(100000)
        return mapView
    }
    
    func updateUIView(_ uiView: SwisstopoMapSDK.SwisstopoMapView, context: Context) {
        //
    }
    
    typealias UIViewType = SwisstopoMapView
}

#Preview {
    MapView(coordinates: Coordinates(latitude: 47.374444, longitude: 8.541111))
}
