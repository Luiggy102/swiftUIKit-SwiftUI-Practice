import UIKit

// MARK: - Manejo de errores
// en caso de que el endpoint no mande datos

let data = """
{
    "name": "Loop Infinito"
}
""".data(using: .utf8)!

struct User: Codable {
    let name: String
    // no edad
    let age: Int? // Colocar opcional si no se siba si estará
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try container.decode(String.self, forKey: .name) // ✅
        // se coloca `decodeIfPresent` cuando se usa el init y no se sabe si vendrá o no
        age = try container.decodeIfPresent(Int.self, forKey: .age) // ❌
    }
}

let user = try JSONDecoder().decode(User.self, from: data)

user.name
user.age // nil, no se crasheará la app
