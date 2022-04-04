import UIKit

// MARK: - Decodificar Array de Json

let data = """
[{
    "name": "Swift",
    "age": 20
  },
  {
    "name": "Beta",
    "age": 30
  },
    {
    "name": "Blog",
    "age": 20
  },
  {
    "name": "iOS",
    "age": 30
  }
]
""".data(using: .utf8)!

let jsonDeco = JSONDecoder()

struct Users: Decodable {
    let name: String
    let age: Int
}

// El truco esta en `[User].self` para espeficar que es un array
let arrayDeJson = try? jsonDeco.decode([Users].self, from: data)

arrayDeJson?.forEach({ Usuarios in
    print("""
El nombre del Usuario es \(Usuarios.name)
La edad del Usuario es \(Usuarios.age)
""")
})

