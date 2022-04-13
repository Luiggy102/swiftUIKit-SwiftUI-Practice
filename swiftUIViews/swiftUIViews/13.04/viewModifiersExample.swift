//
//  viewModifiersExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/13/22.
//

import SwiftUI

struct ViewModifiersExample: View {
    var body: some View {
        VStack {
            Text("Crear modificadores reutilizables")
                .font(.title)
                .bold()
                .padding()
            Button("Botón con nuevo modificador") {
               print("Botón pulsado")
            }.nuevoModificadorBotón() // Modificador nuevo
                .padding()
        }
    }
}

extension View {
    func nuevoModificadorBotón() -> some View {
        self.modifier(NuevoModificadorDeBoton())
    }
}

struct NuevoModificadorDeBoton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
    }
}

struct ViewModifiersExample_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifiersExample()
    }
}
