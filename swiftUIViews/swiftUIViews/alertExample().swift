//
//  alertExample().swift
//  swiftUIViews
//
//  Created by LMCM on 4/11/22.
//

import SwiftUI

struct alertExample: View {
    @State var isPresented: Bool = false
    var body: some View {
        VStack {
            Text("esto es un alerta")
            Button("puse para mandar un alerta") {
                isPresented = true
            }
        }.alert("Alto ahí Basado!", isPresented: $isPresented) {
            Button("Sí") {
                //
            }
            Button("Sí") {
                //
            }
        } message: {
            Text("Odias Francia?")
        }
    }
}

struct alertExample___Previews: PreviewProvider {
    static var previews: some View {
        alertExample()
    }
}
