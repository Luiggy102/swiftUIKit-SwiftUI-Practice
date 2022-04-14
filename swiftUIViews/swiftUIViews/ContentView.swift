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
                    NavigationLink("Preference keys") { PreferenceKeyExample() }
                } header: {
                    Text("14.04")
                }
                Section {
                    NavigationLink("Crear propios modificadores") { ViewModifiersExample() }
                    NavigationLink(
"""
Geometry Reader/ Geometry proxy (hacer diseño personalizado para muchas pantallas y animaciones)
"""
                    ) {
                        GeometryReaderExample()
                    }
                } header: {
                    Text("13.04")
                }
                Section {
                    NavigationLink("Como 3D touch (context Menu)") { ContextMenuExample() }
                    NavigationLink("Acciones al tocar una vista (tap gesture)") { TapGestureExample() }
                    NavigationLink("Mover vistas por la pantalla con animación 🥵🙌") { DragGestureExample() }
                    NavigationLink("swipeActions: desliza para haer algo y\nrefreshable: pull to referesh ") {
                        SwipeActionsRefreshable() }
                } header: {
                    Text("12.04")
                }
                Section {
                    NavigationLink("Listas (tambien se enrollan)") { ListExample() }
                    NavigationLink("Vistas que aparecen (sheet, fullscreen cover)") { SheetExample() }
                    NavigationLink("Mandar alertas") { AlertExample() }
                    NavigationLink("Mandar opciones desde abajo") { ActionSheetExample() }
                } header: {
                    Text("11.04")
                }
                Section {
                    NavigationLink("Matriz/ Grilla (lazy grid)") { GridViewExample() }
                    NavigationLink("Form/ formularios") { FormExample() }
                } header: {
                    Text("09.04")
                }
                Section {
                    NavigationLink("Selecionar Colores") { ColorPickerExample() }
                    NavigationLink("Cargando o barra progreso") { ProgressViewExample() }
                    NavigationLink("Abrir Links (no solo en safari)") { LinksExample() }
                    NavigationLink("Toggle") { ToggleExample() }
                    NavigationLink("Aumentar o decrementar valores (stepper)") { StepperExample() }
                    NavigationLink("slider") { SliderExample() }
                } header: {
                    Text("08.04 (2)")
                }
                Section {
                    NavigationLink("Modificadores de Texto") { TextModifiers() }
                    NavigationLink("Ejemplo de tutorial de App (tab view)") { Tabs() }
                    NavigationLink("Ejemplo Inicio Sesión (textField)") { TextSecField() }
                    NavigationLink("Text Editor") { TextEditorExample() }
                    NavigationLink("Seleccionar Fechas") { DatepickerExample() }
                } header: {
                    Text("08.04 (1)")
                }
            }
            .navigationTitle("Contenido Extra")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Listo") { print("Todo listo") }
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
