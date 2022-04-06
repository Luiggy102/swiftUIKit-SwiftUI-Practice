//
//  AppStorage.swift
//  propertyWrappers
//
//  Created by LMCM on 4/6/22.
//

import SwiftUI

struct AppStorageDemo: View {
    // `@State` Solo persiste en memoria
    // Cada vez que se vueva a ejecutar la App la información se perderá
    @State var name: String = ""
    /*
       Para guardar el valor de name se usa una propiedad con el
      property Wrapper `@AppStrorage`
    */
    // El string el valor de `UserDefaults`
    // la forma de @AppStrorage para guardar los datos por medio de llaves
    @AppStorage("appStorageName") var appStrorageVar: String = ""
    var body: some View {
        Form {
            TextField("Username", text: $name)
            HStack {
                Spacer()
                Button(appStrorageVar.isEmpty ? "Save Changes" : "Update Value") {
                    // El valor de `name` se guarda dentro de la propiedad
                    // `appStrorageName`
                    appStrorageVar = name
                }
                .padding()
                Spacer()
            }
            HStack {
                Spacer()
                Button("Print Value") {
                    // @AppStrorage usa `UserDefaults` para identificar lo guardado
                    print(UserDefaults.standard.string(forKey: "appStorageName")!)
                }
                .padding()
                Spacer()
            }
        }.onAppear {
            name = appStrorageVar
        }
    }
}

struct AppStorage_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageDemo()
    }
}
