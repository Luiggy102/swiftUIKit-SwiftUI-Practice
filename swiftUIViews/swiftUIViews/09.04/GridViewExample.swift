//
//  gridViewExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/9/22.
//

import SwiftUI

struct GridViewExample: View {
    let elements: ClosedRange = 1...500
                                        // fixed = fijo, ancho de 100
    let gridItems: [GridItem] = [GridItem(.fixed(100)),
                                 //
                                 // se adapta dependiendo del tamaño
                                 GridItem(.adaptive(minimum: 20)),
                                 // controla solo una colomna
                                 GridItem(.flexible(minimum: 20))]
    var body: some View {
        ScrollView {
            // Existe el LazyHGrid pero espera fila
            LazyVGrid(columns: gridItems) {
                ForEach(elements, id: \.self) { element in
                    Circle()
                        .frame(height: 40)
                        .foregroundColor(.blue)
                        .overlay { Text("\(element)").foregroundColor(.white) }
                }
            }
        }
    }
}

struct GridViewExample_Previews: PreviewProvider {
    static var previews: some View {
        GridViewExample()
    }
}
