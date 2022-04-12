//
//  contextMenuExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/12/22.
//

import SwiftUI

struct contextMenuExample: View {
    var body: some View {
        Text("Manten tocado para abrir el menu")
            .padding()
            .contextMenu {
                Button("Botón Ejemplo"){ }
                Button("Botón Ejemplo"){ }
                Button("Botón Ejemplo"){ }
                Button(action: {}) {
                    Label("Configuración", systemImage: "iphone")
                }
            }
    }
}

struct contextMenuExample_Previews: PreviewProvider {
    static var previews: some View {
        contextMenuExample()
    }
}
