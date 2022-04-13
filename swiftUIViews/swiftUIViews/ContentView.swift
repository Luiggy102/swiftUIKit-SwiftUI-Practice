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
                    NavigationLink("Crear propios modificadores") { viewModifiersExample() }
                    NavigationLink("Geometry Reader/ Geometry proxy (hacer diseño personalizado para muchas pantallas y animaciones)") { geometryReaderExample() }
                } header: {
                    Text("13.04")
                }
                Section {
                    NavigationLink("Como 3D touch (context Menu)") { contextMenuExample() }
                    NavigationLink("Acciones al tocar una vista (tap gesture)")
                    { tapGestureExample() }
                    NavigationLink("Mover vistas por la pantalla con animación 🥵🙌") { dragGestureExample() }
                    NavigationLink("swipeActions: desliza para haer algo y\nrefreshable: pull to referesh ")
                    { swipeActions_y_refreshable() }
                } header: {
                    Text("12.04")
                }
                Section {
                    NavigationLink("Listas (tambien se enrollan)") { listExample() }
                    NavigationLink("Vistas que aparecen (sheet, fullscreen cover)") { sheetExample() }
                    NavigationLink("Mandar alertas") { alertExample() }
                    NavigationLink("Mandar opciones desde abajo") { actionSheetExample() }
                } header: {
                    Text("11.04")
                }
                Section {
                    NavigationLink("Matriz/ Grilla (lazy grid)") { gridViewExample() }
                    NavigationLink("Form/ formularios") { formExample() }
                } header: {
                    Text("09.04")
                }
                Section {
                    NavigationLink("Selecionar Colores") { colorPickerExample() }
                    NavigationLink("Cargando o barra progreso") { progressViewExample() }
                    NavigationLink("Abrir Links (no solo en safari)") { linksExample() }
                    NavigationLink("Toggle") { toggleExample() }
                    NavigationLink("Aumentar o decrementar valores (stepper)") { stepperExample() }
                    NavigationLink("slider") { sliderExample() }
                } header: {
                    Text("08.04 (2)")
                }
                Section {
                    NavigationLink("Modificadores de Texto") { textModifiers() }
                    NavigationLink("Ejemplo de tutorial de App (tab view)") { Tabs() }
                    NavigationLink("Ejemplo Inicio Sesión (textField)") { text_SecField() }
                    NavigationLink("Text Editor") { textEditorExample() }
                    NavigationLink("Seleccionar Fechas") { datepickerExample() }
                } header: {
                    Text("08.04 (1)")
                }
            }
            .navigationTitle("Contenido Extra")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Listo"){ print("Todo listo") }
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
