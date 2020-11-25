//
//  ContentView.swift
//  SwiftUIBasi1
//
//  Created by Nicolò.Curioni on 25/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            // Aggiungo la MapView
            MapView()
                .edgesIgnoringSafeArea(.top) // Ignoro la safe area dall'alto
                .frame(height: 300) // Imposto un'altezza
            
            // Aggiungo l'immagine CircleImage
            CircleImage()
                .offset(y: -130) // la spingo in alto
                .padding(.bottom, -130) // e aggiungo un padding dal basso di -130
            
            // Aggiungo i testi restanti nello VStack (Stack verticale)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                // HStack è lo stack orizzontale)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline) // testo con il relativo stile del font
                    
                    Spacer() // Spaziatura
                    
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding() // rendo più pulito il contenuto del VStack, con i giusti spazi
            
            Spacer() // ultima spaziatura e il gioco è fatto :)
        }
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
