//
//  sliderExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/8/22.
//

import SwiftUI

struct sliderExample: View {
    @State var iPhoneCounter: Float = 5.0
    @State var isEditing: Bool = false
    
    var body: some View {
        Form {
            Slider(value: $iPhoneCounter,
                   in: 1...10,
                   step: 1,
                   minimumValueLabel: Text("min"),
                   maximumValueLabel: Text("max")) {
                // no funiona, bug de swiftUI
                Text("Seleciona un número de iPhones")
            }
        }
    }
}

struct sliderExample_Previews: PreviewProvider {
    static var previews: some View {
        sliderExample()
    }
}
