//
//  ViewModel.swift
//  ApiCall
//
//  Created by LMCM on 4/1/22.
//

import Foundation

final class VistaModelo {
    func ejecutarAPI() {
        // 1.- Crear session URL, para crear peticiones a un endpoint
        let sesiónURL = URLSession.shared // shared para que se pueda usar en la ejecución de la función
        
        // 2.- Assignar una URL del endpoint
        let UrlDeLaApi = URL(string: "https://itunes.apple.com/search/media=music&entity=song&term=opeth")
        
        /* Hay que darle una tarea a la sesión URL, en este caso es data task
         más tareas en "https://www.swiftbeta.com/urlsession-en-swift/"
         data task hace le petición de recibir(get) o publicar(POST)
         En este caso solo es recirbir
         */
        
        // data task con url da un trailling closure para manegar erroes
        // el trailing closure se da su hubo una repsuesta
        sesiónURL.dataTask(with: UrlDeLaApi!) { datos, respuesta, error in
            // Datos los Bytes, esto se puede transformar a Json
//            print("📀 Datos: \(String(describing:datos))")
//            print("📄 Respuesta: \(String(describing:respuesta))")
            
            // transformar los bytes en Json
            if let datos = datos { // datos es opcional, optional chaining
                /*  JSONSerialization es parte de Fundation
                    Transforma un Json recibido y lo transforma a tipos de datos de swift
                 */
                // Cuando una función como JSONSerialization tiene algo que es `throws`
                // cuando pasa eso hay que intentar `try` ya que no se sabe lo que va a devolver
                // si no se coloca `try` en algo que tira `throws` Xcode no dejara continuar
                let jsonTraducido = try? JSONSerialization.jsonObject(with: datos)
                print(String(describing: jsonTraducido))
            }
//            print("🚨 Error: \(String(describing:error))")
        }.resume() // Si no se pone resume, nunca se ejecutara la petición 
    }
}
