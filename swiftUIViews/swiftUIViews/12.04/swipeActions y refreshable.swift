//
//  swipeActions y refreshable.swift
//  swiftUIViews
//
//  Created by LMCM on 4/12/22.
//

import SwiftUI

// El modelo
struct Dispositivo { let name, systemImage: String }

struct SwipeActionsRefreshable: View {
    // Hacer un array de devices
    var arrayOfDispositivos = [
        Dispositivo(name: "iphone", systemImage: "iphone"),
        Dispositivo(name: "ipad", systemImage: "ipad"),
        Dispositivo(name: "pc", systemImage: "pc"),
        Dispositivo(name: "ipod", systemImage: "ipod"),
        Dispositivo(name: "laptop", systemImage: "laptopcomputer"),
        Dispositivo(name: "4k", systemImage: "4k.tv")
    ]
    var body: some View {
        List {
            Section {
                ForEach(arrayOfDispositivos, id: \.name) { dispositivo in
                    // Capitalized para la primera en mayucula
                    Label(dispositivo.name.capitalized, systemImage: dispositivo.systemImage)
                        // por defecto va a la derecha
                        .swipeActions {
                            Button { print("compartido \(dispositivo.name)") } label: {
                                Label("Compartir", systemImage: "square.and.arrow.up")
                            }.tint(.blue) // para cambiar de color al botón
                            Button { print("favorito \(dispositivo.name)") } label: {
                                Label("Favorito", systemImage: "star.fill")
                            }.tint(.yellow)
                        }
                        // para ponerlo a la derecha
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button {
                                //
                            } label: {
                                Label("Borrar", systemImage: "trash.fill")
                            }.tint(.red)
                        }
                }
//                .onDelete(perform: borrarItem)
            } header: {
                Text("Alza la lista para actualizar")
            }

        }.refreshable {
            print("Recargando información")
        }
        .navigationTitle("Devices")
    }
//    func borrarItem(indexSet: IndexSet) {
//        arrayOfDispositivos.remove(atOffsets: indexSet)
//    }
}

struct SwipeActionsRefreshablePreviews: PreviewProvider {
    static var previews: some View {
        SwipeActionsRefreshable()
    }
}
