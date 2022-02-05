import UIKit
import CoreGraphics

let laQueSeViene = "Programación Orientada a Objetos 😼"

enum Clases: String, CaseIterable {
    case clase1 = "Tema 1: Estructuras y Clases"
    case clase2 = "Tema 2: Estructuras: Datos Copiados Por Valor"
    case clase3 = "Tema 3: Clases: Datos Referenciados"
}
func imprimeTodasLasClases() {
   print("--- Modulo 1 ---")
    for clase in Clases.allCases {
        print(" ",clase.rawValue)
    }
}
imprimeTodasLasClases()

