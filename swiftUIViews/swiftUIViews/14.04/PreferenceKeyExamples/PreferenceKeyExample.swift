//
//  PreferenceKeyExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/14/22.
//

/* Extraer valores de Vistas hijos
 Sirve para cuando el hijo tiene valores que el padre no  */

import SwiftUI

// 1.- Se debe hacer una struct con protocolo `PreferenceKey`
// eso pide dos cosas:
//      1.- valor por defecto `defaultValue`= `Value` lo podemos cambiar por cualquier
//                                             tipo de dato que queremos que sea el `PreferenceKey`
//      2.- un valor `reduce`: es una función que permite actualizar el valor actual al nuevo valor

struct TituloPersonalizadoPreferenceKey: PreferenceKey {
    static var defaultValue: String = ""
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

// Después ya es un valor global que podemos configurar:

/* 2.- Se lo configura dentro de la vista Padre que obtendra datos del hijo
 
 .onPreferenceChange(TituloPersonalizadoPreferenceKey.self) { valorNuevo in
 self.texto = valorNuevo
 }
 */

struct PreferenceKeyExample: View {
    @State private var texto: String = "Hola Mundo"
    var body: some View {
        VStack {
            Text("Más ejemplos reales:")
                .padding()
            HStack {
                NavigationLink("PreferenceKey con GeometryReader") { GeometryPreferenceKeyExample() }.padding()
            }
            VistaSecundaria(texto: texto)
            // El hijo esta cambiando el padre, preference key
            // El padre siendo NavigationView
                .navigationTitle("Titulo Navegación")
                .navigationBarTitleDisplayMode(.inline)
            //                    .tituloPersonalizado("Nuevo Valor!!")
            //                    .preference(key: TituloPersonalizadoPreferenceKey.self, value: "Nuevo Valor")
        }
        .onPreferenceChange(TituloPersonalizadoPreferenceKey.self) { valorNuevo in
            self.texto = valorNuevo
        }
    }
}

/*
 3.- Se coloca:
 `.preference(key: TituloPersonalizadoPreferenceKey.self, value: "Nuevo Valor")`
 Dentro de la vista hijo
 */

struct VistaSecundaria: View {
    let texto: String
    @State private var nuevoValorBaseDeDatos: String = ""
    var body: some View {
        Text(texto)
            .bold()
            .onAppear(perform: traerInfoDesdeBaseDeDatos)
        //            .preference(key: TituloPersonalizadoPreferenceKey.self, value: "Nuevo Valor")
            .tituloPersonalizado(nuevoValorBaseDeDatos)
    }
    func traerInfoDesdeBaseDeDatos() {
        DispatchQueue.main.asyncAfter(deadline: .now() /* + 2.0 */ ) {
            self.nuevoValorBaseDeDatos = "Este esta más complejo!!!"
        }
    }
}

/*
 4.- Paso extra:
 Se puede transformar el preference key como metodo de View
 Para que se parezca a .navigationTitle()
 
 Se hace una extensión de View y se coloca el nombre que queremos poner
 con preference, repetimos lo que pasa en .preference como función
 que retorna una vista con el parametro de valor que quisimos
 */

extension View {
    func tituloPersonalizado(_ texto: String) -> some View {
        preference(key: TituloPersonalizadoPreferenceKey.self, value: texto)
    }
}

struct PreferenceKeyExample_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceKeyExample()
    }
}
