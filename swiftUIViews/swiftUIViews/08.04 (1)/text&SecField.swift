//
//  text&SecField.swift
//  swiftUIViews
//
//  Created by LMCM on 4/7/22.
//

import SwiftUI

struct TextSecField: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            Text("Log In")
                .font(.largeTitle)
                .padding(.horizontal, 60)
            TextField("Username", text: $username)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                // Cada que hay un cambio se puede reocoger la info
                .onChange(of: username) { newValue in
                    print("El usuario es \(newValue)")
                }
            SecureField("Password", text: $password)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                // Cada que hay un cambio se puede reocoger la info
                .onChange(of: password) { newValue in
                    print("La contraseña es \(newValue)")
                }
        }
//        .navigationBarHidden(true)
    }
}

struct TextSecFieldPreviews: PreviewProvider {
    static var previews: some View {
        TextSecField()
    }
}
