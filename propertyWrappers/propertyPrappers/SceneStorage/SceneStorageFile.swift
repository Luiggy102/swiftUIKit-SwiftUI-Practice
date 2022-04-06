//
//  SceneStorageFile.swift
//  propertyWrappers
//
//  Created by LMCM on 4/6/22.
//

import SwiftUI

// Para que funcione no debemos cerrar la Aplicacion

struct SceneStorageFile: View {
    // Asi mismo necesita una llave
    @SceneStorage("tweet") var tweet: String = ""
    @SceneStorage("togglePostInTheBestHour") var togglePostInTheBestHour: Bool = false
    var body: some View {
        Form {
            TextEditor(text: $tweet)
                .frame(width: 300, height: 300)
            Toggle("Post in the best hour", isOn: $togglePostInTheBestHour)
                .padding()
            HStack{
                Spacer()
                Button(togglePostInTheBestHour ? "Post in the best hour ☘️" : "Post now 🐥") {
                    print("Posting...")
                    print("Posted: \(tweet)")
                }
                Spacer()
            }
        }
    }
}

struct SceneStorageFile_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorageFile()
    }
}
