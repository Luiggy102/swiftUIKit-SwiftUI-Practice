//
//  colorPickerExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/8/22.
//

import SwiftUI

struct ColorPickerExample: View {
    @State var color: Color = .blue
    var body: some View {
        VStack(alignment: .leading) {
            Text("Selección de Color")
                .font(.largeTitle)
            Rectangle()
                .frame(width: 400, height: 60)
                .foregroundColor(color)
            ColorPicker("Seleciona un Color", selection: $color)
            Spacer()
        }.padding()
    }
}

struct ColorPickerExample_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerExample()
    }
}
