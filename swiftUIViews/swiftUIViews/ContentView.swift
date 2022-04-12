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
                Section {
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
                Section {
                    NavigationLink("Aumentar o decrementar valores(stepper)") { stepperExample() }
                    NavigationLink("slider") { sliderExample() }
                    NavigationLink("Matriz/Grilla (lazy grid)") { gridViewExample() }
                    NavigationLink("Form/ formularios") { formExample() }
                    NavigationLink("Listas (tambien se enrollan") { listExample() }
                    NavigationLink("Vistan que aparenen(sheet,fullscreen cover)") { sheetExample() }
                    NavigationLink("Mandar alertas") { alertExample() }
                    NavigationLink("Mandar opciones desde abajo") { actionSheetExample() }
                    NavigationLink("Como 3D touch(context Menu") { contextMenuExample() }
                }
            }
            .navigationTitle("Contenido Extra")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done"){ print("Button tapped") }
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
