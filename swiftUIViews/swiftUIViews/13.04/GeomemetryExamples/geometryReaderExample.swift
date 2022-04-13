//
//  geometryReaderExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/13/22.
//

import SwiftUI

struct geometryReaderExample: View {
    var body: some View {
       // representanteGeometria o proxy
        // es un parametro que nos da info del GeometryReader en si
        GeometryReader { representanteGeometria in
            VStack {
                // Dar el tamañano de geometry reader dentro de la estructura
                Text("El ancho y alto del GR en la struct")
                    .background(Color.blue)
                    .padding()
                    .foregroundColor(.white)
                HStack {
                    Text("Ancho: \(representanteGeometria.size.width)")
                        .background(Color.blue)
                        .padding()
                    .foregroundColor(.white)
                    Text("Alto: \(representanteGeometria.size.height)")
                        .background(Color.blue)
                        .padding()
                        .foregroundColor(.white)
                }
                Text("Coordenadas locales:\n \(representanteGeometria.frame(in: .local).debugDescription) \n \n (frame del GR, la vista padre)")
                        .background(Color.blue)
                        .padding()
                        .foregroundColor(.white)
                Text("Coordenadas Globales:\n \(representanteGeometria.frame(in: .global).debugDescription) \n \n (frame de toda la pantalla del dispositivo)")
                        .background(Color.blue)
                        .padding()
                        .foregroundColor(.white)
                NavigationLink(destination: geometryReaderStracks()) {
                    Text("Custom Layout")
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                NavigationLink(destination: geometryReaderScrollView()) {
                    Text("Animaciones (Scroll View)")
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
            }
        }
        }.background(Color.cyan)
            .navigationBarTitleDisplayMode(.inline)
            .border(Color.gray, width: 5)
            .frame(width: 300, height: 600)
    }
}

struct geometryReaderExample_Previews: PreviewProvider {
    static var previews: some View {
        geometryReaderExample()
    }
}
