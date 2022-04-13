//
//  geometryReaderStracks.swift
//  swiftUIViews
//
//  Created by LMCM on 4/13/22.
//

import SwiftUI

struct GeometryReaderStracks: View {
    var body: some View {
        // Esto se adapta a todas la pantallas
        VStack {
            GeometryReader { proxy in
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        Rectangle()
                            .foregroundColor(.green)
                            .overlay(Text("1"))
                        //  Todo la pantalla dividigo para 2 en ancho y alto
                            .frame(width: proxy.size.width/2,
                                   height: proxy.size.height/2)
                        Rectangle()
                            .foregroundColor(.orange)
                            .overlay(Text("2"))
                            .frame(width: proxy.size.width/2,
                                   height: proxy.size.height/2)
                    }
                        Rectangle()
                            .foregroundColor(.purple)
                            .overlay(Text("3"))
                    //      Todo el ancho y 33% de alto
                            .frame(width: proxy.size.width,
                                   height: proxy.size.height * 0.33)
                }
            }
            .background(Color.red)
        }
    }
}

struct GeometryReaderStracks_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderStracks()
    }
}
