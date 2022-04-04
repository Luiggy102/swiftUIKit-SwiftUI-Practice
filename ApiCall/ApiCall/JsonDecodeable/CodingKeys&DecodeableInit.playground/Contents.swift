import UIKit

let datos = """
{
    "nombre_del_usuario: "Rambo",
    "edad": 30
}
""".data(using: .utf8)!

struct UsuarioDelJson: Decodable {
    let nombre: String
    let edad: Int
    
    enum CodingKey: String, CodingKey {
    case nombre = "nombre_del_usuario"
    case edad
    }
}


