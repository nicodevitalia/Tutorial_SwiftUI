//
//  CircleImage.swift
//  SwiftUIBasi1
//
//  Created by Nicolò.Curioni on 25/11/20.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        
        // Aggiungo l'immagine, prendendola dal file Assets.xcassets
        Image("turtlerock")
            .clipShape(Circle()) // la rendo un cerchio
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4)) // ci aggiungo un overlay, quindi un'altro cerchio, con colore bordo bianco, larghezza linea 4 punti
            .shadow(radius: 10) // aggiungo l'ombra, con un raggio di 10 punti
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
