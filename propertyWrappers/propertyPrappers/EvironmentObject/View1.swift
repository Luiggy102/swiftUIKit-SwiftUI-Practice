//
//  EvironmentObj.swift
//  propertyWrappers
//
//  Created by LMCM on 4/6/22.
//

import SwiftUI

final class ViewModel: ObservableObject { @Published var counter: Int = 0 }

struct View1: View {
    // Clase instaciada hecha propiedad
    @StateObject var viewModel: ViewModel = ViewModel()
    var body: some View {
        VStack {
            Text("Counter \(viewModel.counter)")
                .bold()
                .font(.largeTitle)
                .padding()
            Text("View 1")
                .padding()
                .border(Color.blue,width: 3)
//            View2(viewModel: viewModel)
            View2()
        }.border(Color.blue,width: 3)
        // Se manda una clase a otra vista hijo
        // La coneccion del tipo de Clase
            .environmentObject(viewModel)
    }
}

struct EvironmentObj_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
