//
//  toggleExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/8/22.
//

import SwiftUI

struct ToggleExample: View {
@State var isOn: Bool = false
    var body: some View {
        Form {
            Toggle("Activar Toggle", isOn: $isOn)
            // Ver el valor de `isOn`
            Text(isOn.description)
        }
    }
}

struct ToggleExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleExample()
    }
}
