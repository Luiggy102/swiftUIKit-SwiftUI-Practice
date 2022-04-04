import UIKit

// MARK: - Coding keys

// Son formas de cambiar de `snake_case` a `camelCase`
// o cambiar de nombre las llaves del json para swift

// (se tiene que cambiar todas las propiedades)


// Si uno de los datos tiene mala sintaxis, no se parseará el Json

let datos = """
{
    "nombre_del_usuario": "Rambo",
    "cuidad": "Ciudad Gótica",
    "edad": 30
}
""".data(using: .utf8)!

struct Usuario: Decodable {
    let nombre: String
    let cuidad: String
    let edad: Int
        
    // Solo se puede hacer CodingKeys poniendo la palabra reservada
    // `CodingKeys` como nombre del enum
    
    enum CodingKeys: String, CodingKey {
    case nombre = "nombre_del_usuario"
    case cuidad
    case edad
    }
}

let usuario = try? JSONDecoder().decode(Usuario.self, from: datos)

usuario?.nombre
usuario?.edad

// MARK: - Decodeable init

// El protocolo `decodable` tiene un inicalizador
// no se lo pone por que swift ya lo hace por defecto
// pero se puede hacer manualmente, en caso de asignar valor a las propiedades


extension Usuario {
    init(from decoder: Decoder) throws {
        
        // Container con las Coding keys del enum
        // para después asignarselas a cada una de las propiedades
        let containerDeCondingKeys = try decoder.container(keyedBy: CodingKeys.self)
        
        // Asignar a las propiedades
        self.nombre = try containerDeCondingKeys.decode(String.self, forKey: .cuidad) // se pueden cometer errores
        self.edad = try containerDeCondingKeys.decode(Int.self, forKey: .edad) // por lo que es manual
        self.cuidad = try containerDeCondingKeys.decode(String.self, forKey: .nombre)
    }
}

// Error: datos equivocados
usuario?.nombre
usuario?.edad
usuario?.cuidad
