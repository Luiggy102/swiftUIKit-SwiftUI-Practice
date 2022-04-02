//
//  ContentView.swift
//  ApiCall
//
//  Created by LMCM on 4/1/22.
//

import SwiftUI

struct ContentView: View {
    private var vistaModelo: VistaModelo = VistaModelo()
    var body: some View {
        VStack {
            Text("Petición http en Swift")
                .font(.headline)
            Button {
                vistaModelo.ejecutarAPI()
            } label: {
                Text("Crear petición HTTP")
                    .padding()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
