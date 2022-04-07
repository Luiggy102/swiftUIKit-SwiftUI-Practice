//
//  textModifiers.swift
//  swiftUIViews
//
//  Created by LMCM on 4/7/22.
//

import SwiftUI

struct textModifiers: View {
    var body: some View {
//        NavigationView {
            VStack(alignment:.leading) {
                Text("Modificadores de Texto extra")
                    .bold()
                Text("Combinar")
                    .underline()
                + Text(" texto")
                    .italic()
                + Text(" distinto")
                    .font(.title)
                    .foregroundColor(.red)
                Text("Texto en 3d muy largo para que esten muchas líneas")
                    .rotation3DEffect(.degrees(20), axis: (x:1, y:0, z:0))
                    .font(.title)
                    .shadow(color: .gray, radius: 2, x: 0, y: 10)
                    .lineLimit(2)
                    .lineSpacing(40)
                    .padding()
               // Fecha/ tiempo
                Label("Fecha, tiempo y temporizadores", systemImage: "clock")
                    .padding()
                Label("Fecha, tiempo y temporizadores", systemImage: "clock")
                    .padding()
                    .labelStyle(IconOnlyLabelStyle())
                Text(Date(), style: .date)
                Text(Date(), style: .timer)
                Text(Date().addingTimeInterval(3600), style: .timer)
                Text(Date(), style: .time)
                Spacer()
                    .navigationTitle("Modificadores/tiempo")
                    .navigationBarTitleDisplayMode(.inline)
            }
//        }
    }
}

struct textModifiers_Previews: PreviewProvider {
    static var previews: some View {
        textModifiers()
    }
}
