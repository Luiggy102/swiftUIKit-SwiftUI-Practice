//
//  ContentView.swift
//  propertyPrappers
//
//  Created by LMCM on 4/6/22.
//

import SwiftUI

// `@ObservedObject` vs `@StateObject`

struct ContentView: View {
    @State private var counter: Int = 0
    var body: some View {
        VStack {
            Text("Counter: \(counter)")
                .font(.largeTitle)
                .padding()
            HStack {
                // Cada ves que se le da al botón, la vista se redibuja
                Button("Increment Counter") {
                    counter += 1
                }
                Button("Resest Counter") {
                    counter = 0
                }
            }
            // y se crea una nueva instancia de `ListVideos()` de 0
            // y la info que habia antes se acaba perdiendo
            // Si se usa `@StateObject` en la propiedad Clase que se quiere mantener
            // los cambios no se pierden
            ListVideos()
        }
    }
}

struct ListVideos: View {
    
    // `@ObservedObject` indentifica que esta propiedad se instancia de un
    // `ObserbableObject`, los cambios que pasen en esa clase, actualizaran la vista
    
    // `@ObservedObject` la inicia de 0 si la vista Padre se actualiza
    // `@StateObject` mantiene los cambios
    
//    @ObservedObject private var videoViewModel = VideoViewModel()
    
    @StateObject private var videoViewModel = VideoViewModel()
    
    var body: some View {
        NavigationView {
            List(videoViewModel.VideosModel, id: \.self) { video in
               Text(video)
            }
            .navigationTitle("List of Videos")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Add More Topics"){ videoViewModel.addMoreTopics() }
                }
            }
            // .OnAppear es como un Init()
//            .onAppear{
//                VideosModel = [
//                    "Learn SwiftUI",
//                    "Learn Git",
//                    "Learn ios dev"
//                ]
//            }
        }
    }
    // Normalmente esta info viene de una llamada a un servidor
    // La vista no debe ser la responsable de esto
    
    /*
     Se debe de crear un clase que se encargue de obtener
       y manipular esta información
     
     y cuando esta info cambie, la vista se actulize
     
     */
//    func addMoreTopics() {
//        VideosModel.append("Learn Terminal")
//        VideosModel.append("Learn Xcode")
//        VideosModel.append("Learn Swift")
//    }
}

// Con `ObserbableObject` se declara alguna propiedad de esta clase
// puede cambiar actualizar una vista
// Se debe declarar con `@ObservedObject` en la propiedad que instacie la clase en la vista
// para que los cambios tomen efecto

final class VideoViewModel: ObservableObject {
    
    // Con `@Published` se declara que esta propiedad puede cambiar la vista
    // Cualquier cambio en esta propiedad se podra controlar
    // en la vista instanciada
    
    @Published var VideosModel: [String] = []
    init() {
        VideosModel = [
            "Learn SwiftUI",
            "Learn Git",
            "Learn ios dev"
        ]
    }
    func addMoreTopics() {
        VideosModel.append("Learn Terminal")
        VideosModel.append("Learn Xcode")
        VideosModel.append("Learn Swift")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
