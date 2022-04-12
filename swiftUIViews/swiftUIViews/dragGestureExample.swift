//
//  dragGestureExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/12/22.
//

import SwiftUI

// Este es más complejo

struct dragGestureExample: View {
    
// 1.- Hay que hacer una variable que tenga las coordenadas
// dicha variable tiene que ser `CGSize` es una structura que contiene ancho y largo
// `dragOffset` = `despalzamientoPorArrastre`
    
    // .zero es para que este en la posición inicial de swiftUI
    // x: 0, y: 0
    @State var desplazamientoPorArrastre: CGSize = .zero
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            // 2.- darle a offset las "coordenadas para que se mueva
            .offset(x: desplazamientoPorArrastre.width, y: desplazamientoPorArrastre.height)
            .gesture(
                // 3.-
                DragGesture()
                    // nos da el valor de cuando el rectangulo cambia
                    .onChanged({ valorDelDesplazamiento in
                        // .translation es el traducción completa del arrastre a tipo `CGSize`
                        desplazamientoPorArrastre = valorDelDesplazamiento.translation
                    })
                // 4.-
                    // cuando acaba el movimiento
                    .onEnded({ _ in
                        // .spring() es un tipo de animación
                        withAnimation(.spring()) {
                            // para que vuelva a la zona original con animación
                            desplazamientoPorArrastre = .zero
                        }
                    })
            )
    }
}

struct dragGestureExample_Previews: PreviewProvider {
    static var previews: some View {
        dragGestureExample()
    }
}
