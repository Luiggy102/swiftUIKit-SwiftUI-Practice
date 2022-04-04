import UIKit

// `Codeable` es la combinación de `Decodeable` y `Encodeable`
// `Decodeable` es tranformar de bytes al objeto (struct-class)
// `Encodeable` es crear bytes desde el objeto, objeto -> bytes

// - Mapear Json para nuestra App

/*
 1.- hay que tranformar a utf8 para que no errores de codificacion con otros
  idiomas y acentos
 */

let datosJson = """
{
    "nombre": "Mario",
    "edad": 30
}
""".data(using: .utf8)!

/*
 2.- crear estructura con protocolo (De)codeable para que
        pueda parsear el Json recibido
 */

struct Usuario: Decodable {
    let nombre: String
    let edad: Int
}

/*
 3.- Usar JsonDecoder para transformar el json en tipos de datos swift(string, int, etc)
    Se coloca el try? para las funciones que tiran `thows`
    
    * Se le pasa la estructura con .self
    * Se le pasa los datos Json con .utf8!
 
 */

let usuarioEnJsonSwift = try? JSONDecoder().decode(Usuario.self, from: datosJson)

usuarioEnJsonSwift?.nombre // String
usuarioEnJsonSwift?.edad // Entero

