//
//  ContentView.swift
//  swiftUIViews
//
//  Created by LMCM on 4/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Modificadores de Texto",
                               destination: textModifiers())
                NavigationLink("Ejemplo de tutorial de App(tab view)",
                               destination: Tabs())
            }
            .navigationTitle("Contenido Extra")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
