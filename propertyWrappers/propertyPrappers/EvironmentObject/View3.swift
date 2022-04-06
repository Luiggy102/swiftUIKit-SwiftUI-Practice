//
//  View3.swift
//  propertyWrappers
//
//  Created by LMCM on 4/6/22.
//

import SwiftUI

struct View3: View {
    // El tipo de clase que se le da es el que hereda del Padre `ViewModel`
    // simpre y cuando tenga @EnvironmetObject se lo puede poner nombre distinto
    
    // @EnvironmentObject conecta la clase instanciada hecha propiedad del Padre con
    // con la propiedad de el hijo
    @EnvironmentObject var modeloVista: ViewModel
    var body: some View {
        VStack {
            Text("View 3")
                .padding()
            .border(Color.orange ,width: 3)
            Button("Increment") {
                modeloVista.counter += 1
            }.padding()
        }
    }
}

struct View3_Previews: PreviewProvider {
    static var previews: some View {
        View3()
    }
}
