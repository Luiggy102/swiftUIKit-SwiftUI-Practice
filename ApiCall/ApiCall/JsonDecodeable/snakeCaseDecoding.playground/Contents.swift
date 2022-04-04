import UIKit

// Con `keyDecodingStrategy` como propiedad del JSONDecoder para poder usar distintas estrategias.
// Por ejemplo hay empresas/equipos que prefieren usar snake case "user_name"

let data = """
{
    "type_vehicle": "Car",
    "num_doors": 4
}
""".data(using: .utf8)!

struct Vehicle: Codable {
    let typeVehicle: String
    let numDoors: Int
}

let jsonDecoder = JSONDecoder()

jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase

let vehicle = try? jsonDecoder.decode(Vehicle.self, from: data)

// Ahora es cameCase, no hizo falta CondingKeys enum
vehicle?.typeVehicle
vehicle?.numDoors

