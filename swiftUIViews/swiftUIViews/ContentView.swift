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
                NavigationLink("Modificadores de Texto") { textModifiers() }
                NavigationLink("Ejemplo de tutorial de App(tab view)") { Tabs() }
                NavigationLink("Ejemplo Inicio Sesión(textField)") { text_SecField() }
                NavigationLink("Text Editor") { textEditorExample() }
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
