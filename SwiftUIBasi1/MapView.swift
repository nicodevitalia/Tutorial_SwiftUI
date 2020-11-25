//
//  MapView.swift
//  SwiftUIBasi1
//
//  Created by Nicolò.Curioni on 25/11/20.
//

import SwiftUI
import MapKit // Importa il Framework MapKit

// Rendi questa Struct conforme al protocollo ´UIViewRepresentable´
struct MapView: UIViewRepresentable {
    
    // aggiungi i due metodi richiesti, provenienti dal protocollo ´UIViewRepresentable´
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero) // restituisci MKMapView con frame a.zero
    }
    
    // Aggiorna la UIView, con le relative proprietà
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        // 1) Aggiungi le coordinate
        let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        // 2) Imposta uno zoom sulla mappa
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        
        // 3) Crea la regione, prendendo le due variabili dichiarate sopra
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        // 4) Imposta la regione alla uiView, così da mostrare la mappa
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
