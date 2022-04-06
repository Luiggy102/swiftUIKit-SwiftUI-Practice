//
//  view2.swift
//  propertyWrappers
//
//  Created by LMCM on 4/6/22.
//

import SwiftUI

struct View2: View {
//    @ObservedObject var viewModel: ViewModel
    var body: some View {
        VStack {
            Text("View 2")
                .padding()
            .border(Color.green,width: 3)
//            View3(viewModel: viewModel)
            View3()
        }
        
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
//        View2(viewModel: ViewModel())
        View2()
    }
}
