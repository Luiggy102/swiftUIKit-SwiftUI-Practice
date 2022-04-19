//
//  ContentView.swift
//  CalulatorEs
//
//  Created by LMCM on 4/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            GeometryReader { GeometryProxy in
                VStack {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Text("0")
                                .foregroundColor(.white)
                                .font(.system(size: 100, weight: .regular))
                                .frame(height: 100)
                                .padding(.trailing, 20)
                        }
                    }
                    StackBotonesVerticales(datos: Matriz.primeraSecciónDatos ,
                               columnas: Matriz.primeraSecciónCuadricula(390 * 0.25),
                               ancho: 390)
                    StackBotonesVerticales(datos: Matriz.segundaSecciónDatos ,
                               columnas: Matriz.segundaSecciónCuadricula(390 * 0.25),
                               ancho: 390)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
