//
//  sheetExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/11/22.
//

import SwiftUI

struct sheetExample: View {
    @State var isPresentedFullScreen: Bool = false
    @State var isPresentedSheet: Bool = false
    var body: some View {
        VStack {
            Button("Botón para FullScreenCover"){ isPresentedFullScreen = true }.padding()
            Button("Botón para sheet"){ isPresentedSheet = true }.padding()
        }.fullScreenCover(isPresented: $isPresentedFullScreen,
                          onDismiss: { isPresentedFullScreen = false },
                          content: {
            ZStack {
                Color.yellow.ignoresSafeArea()
                Button("Regresar a pantatalla anterior") { isPresentedFullScreen = false }
            }
        })
        .sheet(isPresented: $isPresentedSheet,
                          onDismiss: { isPresentedSheet = false },
                          content: {
            ZStack {
                Color.yellow.ignoresSafeArea()
                Button("Regresar a pantatalla anterior") { isPresentedSheet = false }
            }
        })
    }
}

struct sheetExample_Previews: PreviewProvider {
    static var previews: some View {
        sheetExample()
    }
}
