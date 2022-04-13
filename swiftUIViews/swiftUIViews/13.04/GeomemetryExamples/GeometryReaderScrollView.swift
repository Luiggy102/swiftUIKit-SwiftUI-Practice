//
//  geometryReaderScrollView.swift
//  swiftUIViews
//
//  Created by LMCM on 4/13/22.
//

import SwiftUI

struct GeometryReaderScrollView: View {
    let arrayOfNames = ["Aprende SwiftUI",
                        "Aprende Swift",
                        "Aprende Xcode",
                        "SwiftUI",
                        "Xcode",
                        "Swift"
                       ]
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(arrayOfNames, id: \.self) { name in
                    GeometryReader { proxy in
                        VStack {
                            // Ver las coordenadas globales de Y durante el scroll
                            Text("\(proxy.frame(in: .global).minY)")
                            Spacer()
                            Text("\(name)")
                                .frame(width: 370, height: 200)
                                .background(.blue)
                                .cornerRadius(20)
                                .foregroundColor(.white)
                            Spacer()
                        }.shadow(color: .gray, radius: 10, x: 0, y: 0)
                            .rotation3DEffect(
                                // El - 47 es para que la primera vista este sin rotación
                                // * Sin 0 grados de inclinación
                                Angle(degrees: Double(proxy.frame(in: .global).minY) - 47 ),
                                axis: (x: 0.0, y: 10.0, z: 0.0)
                            )
                    }
                    .frame(width: 370, height: 300)
                }
            }.padding(.trailing)
        }.padding(.horizontal)
    }
}

struct GeometryReaderScrollView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderScrollView()
    }
}
