import UIKit
import CoreGraphics

let laQueSeViene = "Programación Orientada a Objetos 😼"

enum Modulos: String, CaseIterable {
    case modulo1 = "\n--- Modulo 1: Estructuras y Clases ---"
    case modulo2 = "\n--- Modulo 2: Tipos de Propiedades ---"
    case modulo3 = "\n--- Modulo 3: Métodos, subíndices y herencia ---"
    case modulo4 = "\n--- Modulo 4: Inicializadores o constructores ---"
    case modulo5 = "\n--- Modulo 5: Encadenamiento opcional ---"
    case modulo6 = "\n--- Modulo 6: Conclusión opcional ---"
}

enum Clases: String, CaseIterable {
    case clase1 = "* Estructuras y Clases (1)" // 1
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
        print(" ",clase.rawValue)
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

var modulo = { (modulo: UInt8) -> Void in
    switch modulo {
    case 1:
        print(Modulos.modulo1.rawValue)
        for clase in Clases.allCases {
            print(clase.rawValue)
            if clase.rawValue == Clases.clase4.rawValue{
                break
            }
        }
    case 2: // Hacer imprimer desde la clase 2 hasta la 10
        print(Modulos.modulo2.rawValue)
        for clase in Clases.allCases {
            if clase != Clases.clase4 {
                print(clase.rawValue)
                continue
            }
        }
    case 3:
        print(Modulos.modulo3.rawValue)
        for clase in Clases.allCases {
            print(clase.rawValue)
            if clase.rawValue == Clases.clase17.rawValue{
                break
            }
        }
    case 4:
        print(Modulos.modulo4.rawValue)
        for clase in Clases.allCases {
            print(clase.rawValue)
            if clase.rawValue == Clases.clase22.rawValue{
                break
            }
        }
    case 5:
        print(Modulos.modulo5.rawValue)
        for clase in Clases.allCases {
            print(clase.rawValue)
            if clase.rawValue == Clases.clase26.rawValue{
                break
            }
        }
    case 6:
        print(Modulos.modulo6.rawValue)
        for clase in Clases.allCases {
            print(clase.rawValue)
            if clase.rawValue == Clases.clase4.rawValue{
                break
            }
        }
    default: imprimeTodasLasClases()
    }
}

modulo(2)

