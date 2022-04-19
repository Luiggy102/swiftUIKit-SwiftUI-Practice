//
//  ContentView.swift
//  reduxArchitecture
//
//  Created by LMCM on 4/19/22.
//

// Redux centraliza los estados de la app
// Hace el flow de datos tranparente y predecible

// `Store` es la única fuente de verdad
// Para almacenar los estados de la app

// si hay un cambio en la interfaz,
// hay que actualizar el estado de `store`

// `store` es un objeto inmutable
// para actualizarla se usa una función `reducer`

// `reducer` toma como parametro `store` para cambiar
// y toma como parametro `action` para saber que cambiar

// `action` es un objeto que descirbre que pasa(eventos)
// basado en la `action` el `reducer` sabrá que actualizar

// pueden haber muchos `reducer`

import SwiftUI

struct AppState {
    var nombres: [String] = ["nombre inicial", "nombre inicial"]
}

enum AppAction {
case cargarNombres
}

func appReducer(appState: inout AppState, action: AppAction) {
    switch action {
    case .cargarNombres:
        appState.nombres.append(contentsOf: ["nombre extra", "nombre extra 2"])
    }
}

// Dentro del `store` va el `state` y `reducer`
class AppStore: ObservableObject {
    // `private(set)` solo el `setter` sea privado
    // quiere decir que solo se puede cambiar dentro de la struct
    // afuera el `getter` es público
    @Published private(set) var appState: AppState
    private let reducer: (inout AppState, AppAction) -> Void
    
    init(estadoInicial: AppState, reducer: @escaping (inout AppState, AppAction) -> Void) {
        self.appState = estadoInicial
        self.reducer = reducer
    }
    
    func reduce(acción: AppAction) {
        reducer(&appState, acción)
    }
    
}

struct ContentView: View {
    @StateObject var store: AppStore = AppStore(estadoInicial: AppState(),
                                                reducer: appReducer)
    var body: some View {
        NavigationView {
            List {
                ForEach(store.appState.nombres, id: \.self) { name in
                    Text("\(name)")
                }
            }
            .toolbar(content: {
                Button("Cargar más nombres") {
                    store.reduce(acción: .cargarNombres)
                }
            })
            .navigationTitle("Nombres")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
