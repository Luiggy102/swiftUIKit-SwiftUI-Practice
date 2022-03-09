import UIKit

var greeting = "Hello, playground"


let laQueSeViene = "Programación Orientada a Objetos"
print(laQueSeViene)

enum Modulos: String, CaseIterable {
    case modulo1 = "\n--- Modulo 1: Estructuras y Clases ---"
    case modulo2 = "\n--- Modulo 2: Tipos de Propiedades ---"
    case modulo3 = "\n--- Modulo 3: Métodos, subíndices y herencia ---"
    case modulo4 = "\n--- Modulo 4: Inicializadores o constructores ---"
    case modulo5 = "\n--- Modulo 5: Encadenamiento opcional ---"
    case modulo6 = "\n--- Modulo 6: Conclusión opcional ---"
}
enum Clases: String, CaseIterable {
    case clase1 = "* Estructuras vs Clases (1)" // 1
    case clase2 = "* Estructuras: Datos Copiados Por Valor (2)"
    case clase3 = "* Clases: Datos Referenciados (3)"
    case clase4 = "* Stored Properties (4)" // 2
    case clase5 = "* Lazy Stored Properties (5)"
    case clase6 = "* Computed Properties (6)"
    case clase7 = "* Computed Properties de sólo lectura (7)"
    case clase8 = "* Property Observers (8)"
    case clase9 = "* Type Properties (9)"
    case clase10 = "* Métodos de instancia (10)" // 3
    case clase11 = "* Mutating Methods (11)"
    case clase12 = "* Métodos de clase (12)"
    case clase13 = "* Subíndices (13)"
    case clase14 = "* Matrices usando subíndices (14)"
    case clase15 = "* Herencia (15)"
    case clase16 = "* Sobreescritura de variables y métodos (16)"
    case clase17 = "* Inicializadores (17)" // 4
    case clase18 = "* Nombres, etiquetas y optionals (18)"
    case clase19 = "* Inicializadores en subclases (19)"
    case clase20 = "* Failable Initializer (20)"
    case clase21 = "* Destrucción de objetos con deinit (21)"
    case clase22 = "* Optional Chaining (22)" // 5
    case clase23 = "* Clases ejemplo para Optional Chaining (23)"
    case clase24 = "* Ejemplo práctico con Optional Chaining (24)"
    case clase25 = "* Optional Chaining múltiple (25)"
    case clase26 = "* Cierre del Curso (26)" // 6
}

func imprimeTodasLasClases() {
    print(laQueSeViene)
    print(Modulos.modulo1.rawValue)
    for clase in Clases.allCases {
        print(" ", clase.rawValue)
        if clase.rawValue == Clases.clase3.rawValue {
            print(Modulos.modulo2.rawValue)
        } else if clase.rawValue == Clases.clase9.rawValue {
            print(Modulos.modulo3.rawValue)
        } else if clase.rawValue == Clases.clase16.rawValue {
            print(Modulos.modulo4.rawValue)
        } else if clase.rawValue == Clases.clase21.rawValue {
            print(Modulos.modulo5.rawValue)
        } else if clase.rawValue == Clases.clase25.rawValue {
            print(Modulos.modulo6.rawValue)
        }
    }
}

var moduloActual: UInt8 = 1
var tituloActual: UInt8 = 1
let separador = "========================================================================================================================"
var modulo = { (modulo: UInt8) -> Void in
    switch modulo {
    case 1:
        print(Modulos.modulo1.rawValue)
        for clase in Clases.allCases {
            print(clase.rawValue)
            if clase.rawValue == Clases.clase3.rawValue {
                break
            }
        }
    case 2: // Hacer imprimer desde la clase 4 hasta la 10
        print(Modulos.modulo2.rawValue)
        var contador = 1
        for clase in Clases.allCases {
            if contador > 3 && contador < 10 {
                print(clase.rawValue)
            } else if contador == 11 {
                break
            }
            contador += 1
        }
    case 3:
        print(Modulos.modulo3.rawValue)
        var contador = 1
        for clase in Clases.allCases {
            if contador > 9 && contador < 17 {
                print(clase.rawValue)
            } else if contador == 17 {
                break
            }
            contador += 1
        }
    case 4:
        print(Modulos.modulo4.rawValue)
        var contador = 1
        for clase in Clases.allCases {
            if contador > 16 && contador < 23 {
                print(clase.rawValue)
            } else if contador == 23 {
                break
            }
            contador += 1
        }
    case 5:
        print(Modulos.modulo5.rawValue)
        var contador = 1
        for clase in Clases.allCases {
            if contador > 21 && contador < 26 {
                print(clase.rawValue)
            } else if contador == 26 {
                break
            }
            contador += 1
        }
    case 6:
        print(Modulos.modulo6.rawValue)
        for clase in Clases.allCases {
            if clase == Clases.clase26 {
                print(clase.rawValue)
            } else {
                continue
            }
        }
    default: print("Eliga Modulo del 1 al 6")
    }
}
var titulo = { (titulo: UInt8) in
    var contador = 1
    for clase in Clases.allCases {
        if contador == titulo {
                print("""
            \(separador)
            \n  El Titulo Actual es:
                \(clase.rawValue) \n
            - Ejercicios/Ejemplos: \n
            """)
        } else if contador > titulo {
            break
        }
        contador += 1
    }
}

moduloActual = 5
modulo(moduloActual)

tituloActual = 22
titulo(tituloActual)

/* class Person {
    var residence: Residence? // no se debe asegurar que la persona tiene residencia
}

class Residence { // Residencia estandar
    var numberOfRooms: UInt8 = 1
}

let charles = Person()

// Error, Charles no tiene residencia
// let roomCount = charles.residence!.numberOfRooms

// optional chaining

if let roomCount = charles.residence?.numberOfRooms {
    print("Charles tiene una residencia con \(roomCount) habitación(es)")
} else {
    print("Charles no tiene casa")
}

charles.residence = Residence() // confirmar la residencia
charles.residence?.numberOfRooms = 4

if let roomCount = charles.residence?.numberOfRooms {
    print("Charles tiene una residencia con \(roomCount) habitación(es)")
} else {
    print("Charles no tiene casa")
}
*/

tituloActual += 1
titulo(tituloActual)

// Estructuras

class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()
    var address: Address?
    var numberOfRoom: Int {
        return rooms.count
    }
    
    subscript(index: Int) -> Room {
        get {
            return rooms[index]
        }
        set {
            rooms[index] = newValue
        }
    }
}

class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address { // class dirección se vincula a la residencia
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buidingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber), \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}

tituloActual += 1
titulo(tituloActual)

let edgar = Person()

if let roomCount = edgar.residence?.numberOfRoom { // no tiene residencia
    print("la cantidad de cuartos es \(roomCount)")
} else {
    print("no tiene casa")
}

// no se va a poder hacer nada hasta que no tenga residencia

let edgarHouse = Residence()
edgarHouse.rooms.append(Room(name: "Living Room"))
edgarHouse.rooms.append(Room(name: "Bathroom"))
edgarHouse.rooms.append(Room(name: "Kitchen"))

edgar.residence = edgarHouse
// Ya se puede ejecutar ese código
edgar
edgar.residence?[0].name

if let roomCount = edgar.residence?.numberOfRoom {
    print("Si tiene casa(s), la cantidad de cuartos en total es \(roomCount)") // Tiene residencia
} else {
    print("no tiene casa")
}

edgar.residence?.numberOfRoom

tituloActual += 1
titulo(tituloActual)

// let begginsWith13 = edgar.residence?.address?.buidingIdentifier()?.hasPrefix("13") ?? false // optional chaining
// let edgarStreet = edgar.residence?.address?.street ?? "Calle desconocida"
begginsWith13
print(edgarStreet)

func createAddress() -> Address {
    let someAddress = Address()
    someAddress.buildingNumber = "13"
    someAddress.buildingName = "Wayne Mansion"
    someAddress.street = "Gotham 098"
    
    return someAddress
}

let edgarAddress = createAddress()
edgar.residence?.address = edgarAddress

let edgarStreet = edgar.residence?.address?.street ?? "Calle desconocida"
let begginsWith13 = edgar.residence?.address?.buidingIdentifier()?.hasPrefix("13") ?? false // optional chaining

tituloActual += 1
titulo(tituloActual)

print("Felicidades a mi")
