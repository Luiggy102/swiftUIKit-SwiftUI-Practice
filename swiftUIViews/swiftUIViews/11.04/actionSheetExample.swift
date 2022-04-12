//
//  actionSheetExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/11/22.
//

import SwiftUI

struct actionSheetExample: View {
   @State var isPresented = false
    var body: some View {
        VStack {
            Button("ejemplo de action sheet") {
               isPresented = true
            }
            .confirmationDialog("Ejemplo de Action sheet",
                                isPresented: $isPresented) {
                Button("Ejemplo") { }
                Button("Ejemplo") { }
                Button("Ejemplo") { }
            } message: {
                Text("mensaje")
            }

        }
    }
}

struct actionSheetExample_Previews: PreviewProvider {
    static var previews: some View {
        actionSheetExample()
    }
}
