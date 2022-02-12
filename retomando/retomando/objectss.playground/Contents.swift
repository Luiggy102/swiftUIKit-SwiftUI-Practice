import UIKit
import CoreGraphics

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
            if contador > 3 && contador < 11 {
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
            if contador > 10 && contador < 17 {
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
            if contador > 22 && contador < 26 {
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

modulo(moduloActual)
titulo(tituloActual)

// Se suelen usar como contenedores de datos que no hagan muchas cosas

// Ej de estructura de resolución de video

struct Resolución {
    var width = 0
    var height = 0
}

// Class para contenedores de datos que hacen más cosas

// Ej: Clase del modo de video

class ModoDeVideo {
    var resolución = Resolución()
    var enlazado = false
    var frameRate = 0.0
    var nombre: String? // Optional por que no se sabe si tendrá un string como nombre
}

let instanciaDeResolución = Resolución()
let instanciaDeModoDeVideo = ModoDeVideo()

// Struct
// instanciaDeResolución.width = 1920 // Error: las instacias de un objeto como constante no pueden cambiar

// Class
instanciaDeModoDeVideo.frameRate = 30.0
instanciaDeModoDeVideo.nombre = "Clase de programación"
instanciaDeModoDeVideo.resolución.width = 1920
instanciaDeModoDeVideo.resolución.height = 1080
instanciaDeModoDeVideo.enlazado = false

print("El titulo es \"\(instanciaDeModoDeVideo.nombre!)\" la resolución es \(instanciaDeModoDeVideo.resolución) y tiene \(instanciaDeModoDeVideo.frameRate) frames")

tituloActual = 2
titulo(tituloActual)

let hd = Resolución(width: 1920, height: 1080) // otro espacio de memoria a partir de resolución, copia de datos
print("hd =", hd)

var cinema = hd
print("Cinema =", cinema)
cinema.width = 2018
print("Cinema =", cinema)

tituloActual = 3
titulo(tituloActual)

let diezOchenta = ModoDeVideo()

diezOchenta.nombre = "Ejemplo de clase"
diezOchenta.frameRate = 25.0
diezOchenta.resolución = hd
diezOchenta.enlazado = false

print("Diez Ochenta")
print(diezOchenta.nombre!, diezOchenta.enlazado, diezOchenta.resolución, diezOchenta.frameRate)

print("Tambein Diez ochenta")
let tambienDiezOchenta = diezOchenta
print(tambienDiezOchenta.nombre!, tambienDiezOchenta.enlazado, tambienDiezOchenta.resolución, tambienDiezOchenta.frameRate)

// Cambios a la clase
tambienDiezOchenta.nombre = "cambios de clase\n"
tambienDiezOchenta.frameRate = 30.0

diezOchenta // Ambos cambiaron, el padre
tambienDiezOchenta // Ambos cambiaron , el hijo

var huboCambios = diezOchenta === tambienDiezOchenta ? false : true // para comparar ===
var noHuboCambios = diezOchenta !== tambienDiezOchenta ? false : true // para negar !==

moduloActual = 2
modulo(moduloActual)
tituloActual = 4
titulo(tituloActual)

print("Propiedades almacenadas")

struct LongitudDeRangoFijo {
    var primerValor: Int // Stored properties
    let rango: Int // Stored properties
}

var rangoDeTresItems = LongitudDeRangoFijo(primerValor: 0, rango: 3)
print(rangoDeTresItems)

rangoDeTresItems.primerValor = 1
print(rangoDeTresItems)

tituloActual = 5
titulo(tituloActual)

class ImportadorDeDatos {
    var nombreDeArchivo = "Archivo.txt"
}

class ManagerDeDatos {
    lazy var importador = ImportadorDeDatos()
    var datos = [String]()
}

let manager = ManagerDeDatos() // Instancia de ManagerDeDatos
manager
manager.datos.append("info")
manager.datos.append("más info")
manager // la variable `lazy` no a sido creada, pero esta el espacio en memoria

print(manager.datos)
// Hasta esta línea, el importer no ha sido creado...
manager.importador.nombreDeArchivo // Cuando llama la variable `lazy` ya crea eso
// Aquí, la variable importer ya ha sido creada
print(manager.importador.nombreDeArchivo)
manager

print(manager.importador.nombreDeArchivo, manager.datos)

tituloActual = 6
titulo(tituloActual)

// REPASAR CLASE

//struct Point {
//    var x = 0.0, y = 0.0
//}
//
//struct Size {
//    var width = 0.0, height = 0.0
//}
//
//struct Rect {
//    var origin = Point()
//    var size = Size()
//    var center: Point {
//        get {
//            Point(x: origin.x + size.width/2, y: origin.y + size.height/2)
//        }
//        set {
//            origin.x = newValue.x - size.width/2
//            origin.y = newValue.y - size.height/2
//        }
//    }
//}
//
//var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
//square.center
//print(square.center)
//let initialSquareCenter = square.center
//square.center = Point(x: 18, y: 3)
