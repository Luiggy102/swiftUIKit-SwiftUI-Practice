//
//  StackBotonesVerticales.swift
//  CalulatorEs
//
//  Created by LMCM on 4/18/22.
//

import SwiftUI



struct StackBotonesVerticales: View {
    let datos: [BotónTeclado]
    let columnas: [GridItem]
    let ancho: CGFloat
    
    init(datos: [BotónTeclado],
         columnas: [GridItem],
         ancho: CGFloat) {
        self.ancho = ancho
        self.columnas = columnas
        self.datos = datos
    }
    
    var body: some View {
        LazyVGrid(columns: columnas, spacing: 12) {
            ForEach(datos, id: \.self) { modeloDeTecla in
                Button(action: {}) {
                    // si es el 0
                    if modeloDeTecla.esDobleDeAncho {
                        Rectangle()
                            .foregroundColor(modeloDeTecla.colorDeFondo)
                            .overlay(
                                Text(modeloDeTecla.tecla)
                                    .font(.largeTitle)
                                    .offset(x: ancho * 0.22 * 0.5)
                            )
                        // se pone el ancho x2
                            .frame(width: ancho * 2 * 0.22,
                                   height: ancho * 0.22)
                    } else { // si no es el 0
                        Text(modeloDeTecla.tecla)
                            .font(.largeTitle)
                            .frame(width: ancho * 0.22,
                                   height: ancho * 0.22)
                    }
                }
                .foregroundColor(modeloDeTecla.colorDeTexto)
                .background(modeloDeTecla.colorDeFondo)
                .cornerRadius(ancho * 0.25 )
            }
        }.frame(width: ancho)
    }
}

struct StackBotonesVerticales_Previews: PreviewProvider {
    static var previews: some View {
        StackBotonesVerticales(datos: Matriz.primeraSecciónDatos ,
                               columnas: Matriz.primeraSecciónCuadricula(390 * 0.25),
                               ancho: 390).previewLayout(.sizeThatFits)
        StackBotonesVerticales(datos: Matriz.segundaSecciónDatos ,
                               columnas: Matriz.segundaSecciónCuadricula(390 * 0.25),
                               ancho: 390).previewLayout(.sizeThatFits)
    }
}
