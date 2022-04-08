//
//  stepperExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/8/22.
//

import SwiftUI

struct stepperExample: View {
    @State var iPhoneCounter: Int = 1
    @State var threeStepCounter: Int = 1
    @State var printedValue: Int = 1
    var body: some View {
        Form {
            // que solo incremente del 1 al 5
            Stepper("Contador de iPhone: \(iPhoneCounter)", value: $iPhoneCounter, in: 1...5)
            // de 3 en 3 hasta 30
            Stepper("Contador de 3 en 3: \(threeStepCounter)", value: $threeStepCounter, in: 1...30, step: 3)
            Stepper("Printar valores") {
                printedValue += 1
                print("aumentar: ",printedValue)
            } onDecrement: {
                printedValue -= 1
                print("decrementar: \(printedValue)")
            }

        }
    }
}

struct stepperExample_Previews: PreviewProvider {
    static var previews: some View {
        stepperExample()
    }
}
