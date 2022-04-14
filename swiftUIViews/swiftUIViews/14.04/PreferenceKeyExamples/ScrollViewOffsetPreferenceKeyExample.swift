//
//  ScrollVIewPreferenceKeyExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/14/22.
//

// Hacer salga una barra de navegeción miestras hacemos scroll up
// Saber cuando el titulo se sale de la pantalla para hacer animaciones

struct ScrollViewOffsetPreferenceKey: PreferenceKey {
   static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

extension View {
    func onScrollViewOffsetChanged(action: @escaping (_ offset: CGFloat) -> Void) -> some View {
       self
            .background(
                GeometryReader { geo in
                    Text("")
                    // Dar el valor minimo del titulo
                        .preference(key: ScrollViewOffsetPreferenceKey.self, value: geo.frame(in: .global).minY)
                }
            )
        .onPreferenceChange(ScrollViewOffsetPreferenceKey.self) { value in
//            scrollViewOffset = value
            action(value)
        }
    }
}

import SwiftUI

struct ScrollViewOffsetPreferenceKeyExample: View {
    @State private var scrollViewOffset: CGFloat = 0
    let titulo: String = "Nuevo Titulo"
    var body: some View {
        ScrollView {
            VStack {
                // Hay que ponerle algo que lea la geometria de esto
                capaTitulo
                    // Cuando vaya llegando a cero la opacidad bajará
                    .opacity(Double(scrollViewOffset / 63.0))
                // Todo resumido en 3 lineas
                    .onScrollViewOffsetChanged { offset in
                        self.scrollViewOffset = offset
                    }
                //                    .background(
//                        GeometryReader { geo in
//                            Text("")
//                            // Dar el valor minimo del titulo
//                                .preference(key: ScrollViewOffsetPreferenceKey.self, value:
                // geo.frame(in: .global).minY)
//                        }
//                    )
                capaContenido
            }.padding()
        }
        .overlay(Text("\(scrollViewOffset)"))
//        .onPreferenceChange(ScrollViewOffsetPreferenceKey.self) { value in
//            scrollViewOffset = value
//        }
                .overlay(capaBarraNavegación
                    .opacity(Double(scrollViewOffset / -50.0)), alignment: .top)
    }
}

struct ScrollVIewPreferenceKeyExample_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewOffsetPreferenceKeyExample()
    }
}

extension ScrollViewOffsetPreferenceKeyExample {
    private var capaTitulo: some View {
        Text(titulo)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    private var capaContenido: some View {
        ForEach(0..<30) { _ in
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.red.opacity(0.3))
                .frame(width: 300, height: 200)
        }
    }
    private var capaBarraNavegación: some View {
        Text(titulo)
            .font(.headline)
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(.ultraThinMaterial)
    }
}
