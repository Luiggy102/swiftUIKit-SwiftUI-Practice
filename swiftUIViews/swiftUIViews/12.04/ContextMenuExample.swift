//
//  contextMenuExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/12/22.
//

import SwiftUI

struct ContextMenuExample: View {
    var body: some View {
        Text("Manten tocado para abrir el menu")
            .padding()
            .contextMenu {
                Button("Botón Ejemplo") { }
                Button("Botón Ejemplo") { }
                Button("Botón Ejemplo") { }
                Button {
                    print("Ejemplo Botón")
                } label: { Label("Configuración", systemImage: "iphone") }
            }
    }
}

struct ContextMenuExample_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuExample()
    }
}
