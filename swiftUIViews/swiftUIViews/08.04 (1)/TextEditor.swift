//
//  TextEditor.swift
//  swiftUIViews
//
//  Created by LMCM on 4/8/22.
//

import SwiftUI

struct TextEditorExample: View {
    @State var textInTextEditor: String = "Escribe algo..."
    @State var counter: Int = 0
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Al momento de que pase 280 caractéres se pasará a rojo el número")
                TextEditor(text: $textInTextEditor)
                    .font(.headline)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .foregroundColor(.blue)
                    .padding()
                    .border(Color.gray)
                    .cornerRadius(3)
                    .onChange(of: textInTextEditor) { newValue in
                        counter = newValue.count
                    }
                Text("Número actual de caractéres: ")
                + Text("\(counter)")
                    .foregroundColor(counter <= 280 ? .green : .red)
                    .font(.subheadline)
            }
            .navigationTitle("Ejemplo De Tweet")
            .navigationBarTitleDisplayMode(.inline)
        }.padding()
    }
}

struct TextEditor_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorExample()
    }
}
