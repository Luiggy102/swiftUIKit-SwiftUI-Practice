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
            Form {
                NavigationLink("Modificadores de Texto") { textModifiers() }
                NavigationLink("Ejemplo de tutorial de App(tab view)") { Tabs() }
                NavigationLink("Ejemplo Inicio Sesión(textField)") { text_SecField() }
                NavigationLink("Text Editor") { textEditorExample() }
                NavigationLink("Seleccionar Fechas") { datepickerExample() }
                NavigationLink("Selecionar Colores") { colorPickerExample() }
                NavigationLink("Cargando o barra progreso") { progressViewExample() }
                NavigationLink("Abrir Links(no solo en safari)") { linksExample() }
                NavigationLink("Toggle") { toggleExample() }
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
