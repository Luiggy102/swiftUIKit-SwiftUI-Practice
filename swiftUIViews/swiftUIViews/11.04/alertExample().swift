//
//  alertExample().swift
//  swiftUIViews
//
//  Created by LMCM on 4/11/22.
//

import SwiftUI

struct AlertExample: View {
    @State var isPresented: Bool = false
    var body: some View {
        VStack {
            Text("esto es un alerta")
            Button("pulse para mandar un alerta") {
                isPresented = true
            }
        }.alert("Alerta", isPresented: $isPresented) {
            Button("Continuar") {
                //
            }
            Button("Cancelar") {
                //
            }
        } message: {
            Text("Deseas continuar?")
        }
    }
}

struct AlertExamplePreviews: PreviewProvider {
    static var previews: some View {
        AlertExample()
    }
}
