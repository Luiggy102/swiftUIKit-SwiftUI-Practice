//
//  tapGestureExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/12/22.
//

import SwiftUI

struct tapGestureExample: View {
    @State var rectangleTapped1: Int = 0
    @State var rectangleTapped2: Int = 0
    var body: some View {
        VStack {
            Text("Tap Gesture")
                .font(.largeTitle)
                .bold()
                .padding()
            Text(
 """
Ejecutar alguna acción cuando un user pulse la vista.
Podemos pasarle el número de veces que el user debe pulsar la vista antes de que se realice la acción que tenemos en el .onEnded
"""
            ).padding()
            HStack {
                VStack {
                    Text("Tocar 2 veces")
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 100, height: 100)
                        .padding()
                        .foregroundColor(rectangleTapped1 == 0 ? Color.red : Color.blue)
                        .gesture(
                            TapGesture(count: 2)
                                .onEnded({ _ in
                                    print("Rectangulo tocado 2 veces")
                                    rectangleTapped1 += 1
                                })
                        )
                    Text("# de veces\n tocado: ")
                    + Text("\(rectangleTapped1)")
                        .foregroundColor(rectangleTapped1 == 0 ? Color.red : Color.blue)
                }
                VStack {
                    Text("Tocar una vez")
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 100, height: 100)
                        .padding()
                        .foregroundColor(rectangleTapped2 == 0 ? Color.red : Color.blue)
                        .onTapGesture(count: 1) {
                            rectangleTapped2 += 1
                            print("Rectangulo tocado 3 veces")
                        }
                    Text("# de veces\n tocado: ")
                    + Text("\(rectangleTapped2)")
                        .foregroundColor(rectangleTapped2 == 0 ? Color.red : Color.blue)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }.padding()
    }
}

struct tapGestureExample_Previews: PreviewProvider {
    static var previews: some View {
        tapGestureExample()
    }
}
