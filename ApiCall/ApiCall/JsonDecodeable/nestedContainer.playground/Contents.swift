import UIKit

// MARK: - Nested Container

// De todas las keys solo queremos unas pocas para nuestra app

/*
 Solo hace falta
    * name
    * age
    * city
 */

let data = """
{
    "name_of_user": "Carlos",
    "age": 30,
    "address": {
        "city": "Metropolis",
        "zip": "12345",
        "street": "Paseo SwiftBeta, Número 1"
    }
}
""".data(using: .utf8)!

// Estructura con la key que hace falta, `city`

//struct Address: Decodable {
//    let city: String
//}

// Pero no hace falta con Nested container
// se lo hace con el init de Decodable

struct User: Decodable {
    let name: String
    let age: Int
//    let address: Address
    let city: String
    
    enum CodingKeys: String, CodingKey {
    case name = "name_of_user"
    case age
    case address // se añade en el padre del json (contenedor)
    case city // y después el hijo que queremos
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        // con container principal
        self.name = try container.decode(String.self, forKey: .name)
        self.age = try container.decode(Int.self, forKey: .age)
        // crear container anidado (decodificar `address`)
        let address = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .address)
        // Ahora `address` puede acceder a la info del json
        self.city = try address.decode(String.self, forKey: .city) // y listo! :)
    }
}

let user = try? JSONDecoder().decode(User.self, from: data)

user?.name
user?.age
// user?.address.city // si sale pero no es lo que quieremos, solo `user?.city`
user?.city // ahora acceder a city es más fácil
