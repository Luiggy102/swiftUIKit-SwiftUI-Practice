//
//  linksExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/8/22.
//

import SwiftUI

// Los links funcionan como los botones
// pero tambien sirven para abrir ajustes del sistema
struct linksExample: View {
    var body: some View {
        VStack {
            Link("Abrir Link en Safari con URL",
                 destination: URL(string: "https://invidious.snopyta.org/watch?v=caVeT9_6A50&list=PLeTOFRUxkMcrJIZf4NnJQsL_ZNIq9JWQy&index=13")!)
            .padding()
            Link(destination: URL(string: UIApplication.openSettingsURLString)!, label: {
                Label("Abrir Ajustes", systemImage: "gear")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(12)
                    .font(.title)
            })
        }
    }
}

struct linksExample_Previews: PreviewProvider {
    static var previews: some View {
        linksExample()
    }
}
