//
//  progressViewExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/8/22.
//

import SwiftUI

struct ProgressViewExample: View {
    @State var isLoading: Bool = false
    // El valor máximo para las barras de cargas es `1`
    // Asi que hay que aumentarle de 0.1
    @State var progressBar: Float = 0.0
    var body: some View {
        VStack {
            Button("Pulse botón para cargar") { isLoading = !isLoading } .padding()
            if isLoading { ProgressView("Cargando... ") .padding() }
            Divider()
            // Aumentando barra
            Button("Pulse botón para cargar la Barra") { progressBar += 0.1 } .padding()
            ProgressView(value: progressBar) .padding()
                .navigationTitle("Productos")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProgressViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewExample()
    }
}
