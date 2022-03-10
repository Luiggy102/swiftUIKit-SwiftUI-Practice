import UIKit
import CoreGraphics
import SwiftUI

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
let separador = "=========================================================================="
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

print("""
    El titulo es \"\(instanciaDeModoDeVideo.nombre!)\"
        la resolución es \(instanciaDeModoDeVideo.resolución) y tiene \(instanciaDeModoDeVideo.frameRate) frames
""")

tituloActual = 2
titulo(tituloActual)

let hdRes = Resolución(width: 1920, height: 1080) // otro espacio de memoria a partir de resolución, copia de datos
print("hd =", hdRes)

var cinema = hdRes
print("Cinema =", cinema)
cinema.width = 2018
print("Cinema =", cinema)

tituloActual = 3
titulo(tituloActual)

let diezOchenta = ModoDeVideo()

diezOchenta.nombre = "Ejemplo de clase"
diezOchenta.frameRate = 25.0
diezOchenta.resolución = hdRes
diezOchenta.enlazado = false

print("Diez Ochenta")
print(diezOchenta.nombre!, diezOchenta.enlazado, diezOchenta.resolución, diezOchenta.frameRate)

print("Tambein Diez ochenta")
let tambienDiezOchenta = diezOchenta
print(tambienDiezOchenta.nombre!, tambienDiezOchenta.enlazado,
      tambienDiezOchenta.resolución, tambienDiezOchenta.frameRate)

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

class Usuario {
    let nombre: String = "JoeDoe"
    var edad: UInt8 = 18
    let altura: Float = 1.70
    var puedeIniciarSesion: Bool { // Computed propertie
        return edad >= 18
    }
}

let joe = Usuario()
joe
print(joe.puedeIniciarSesion)
joe.edad = 17
joe.puedeIniciarSesion ? "verda es" : "nada"

joe

let juan = joe
juan.edad = 19
joe.puedeIniciarSesion ? "verda es" : "nada"
juan
joe

juan === joe // Entre copias , se referencia la mima posición de memoria

// si cambio juan, cambio a joe y viciversa

joe.edad = 16
juan
juan.edad = 20
joe

struct Tamaño {
    var ancho = 0.0, alto = 0.0
}
struct Puntos {
    var puntoX = 0.0, puntoY = 0.0
}

struct Rectangulo {
    var origen = Puntos()
    var tamaño = Tamaño()
    var centro: Puntos {
        get {
            let centroX = origen.puntoX + tamaño.ancho/2
            let centroY = origen.puntoY + tamaño.alto/2
            return Puntos(puntoX: centroX, puntoY: centroY)
        }
        set(nuevoCentro) {
            origen.puntoX = nuevoCentro.puntoX - tamaño.ancho
            origen.puntoY = nuevoCentro.puntoY - tamaño.alto
        }
    }
}

var cuadrado = Rectangulo(origen: Puntos(puntoX: 0, puntoY: 0), tamaño: Tamaño(ancho: 10, alto: 10))
cuadrado.centro
let antiguoCentro = cuadrado.centro
print(antiguoCentro)

cuadrado.centro = Puntos(puntoX: 18, puntoY: 3)
print(cuadrado.centro)

titulo(tituloActual + 1)
tituloActual += 1

struct Cuboide {
    var alto = 0.0, ancho = 0.0, profundidad = 0.0
    var volumen: Double {
        return alto * ancho * profundidad // Computed Properties de sólo lectura
    }
}

let cuboide = Cuboide(alto: 2, ancho: 4, profundidad: 5)
cuboide.volumen // listo
// cuboide.volumen = 20 // Error, solo lectura

print("el volumen del objeto cuboide es: \(cuboide.volumen)")

struct Area {
    var base = 0.0, altura = 0.0
}
struct Perimetro {
    var lado1 = 0.0, lado2 = 0.0, lado3 = 0.0
}

// Prueba rara

// struct Triangulo {
//    var datosParaArea = Area()
//    var datosParaPerimetro = Perimetro()
//    var perimetro: Perimetro {
//        get{
//            let perimetro = datosParaPerimetro.lado1 + datosParaPerimetro.lado2 + datosParaPerimetro.lado3
//            return Perimetro(lado1: perimetro, lado2: perimetro, lado3: perimetro)
//        }
//        set{
//            newValue.lado1 + newValue.lado2 + newValue.lado3
//        }
//
//    }
// }

// var trianguloRectangulo = Triangulo(datosParaArea: Area(base: 20, altura: 10),
// datosParaPerimetro: Perimetro(lado1: 10, lado2: 10, lado3: 10))
// print(trianguloRectangulo.perimetro)
// trianguloRectangulo.perimetro = Perimetro(lado1: 30, lado2: 30, lado3: 30)

tituloActual += 1
titulo(tituloActual)

class PrecioDeConsola {
    var precio: Double = 0.0 {
        didSet {
            print("El valor antiguo era \(oldValue) \n")
        }
        willSet {
            print("El nuevo precio es \(newValue)")
        }
    }
}

var ps5 = PrecioDeConsola()
ps5.precio = 100
ps5.precio = 300

class ContadorDePasosDemo {
    var pasosTotales: Int = 0 { // Cuando esto cambia se hara el didSet
        willSet { // Antes de (new Value), no se usa mucho
            print("los pasos son: Valor actual \(pasosTotales) y Valor nuevo \(newValue)")
        }
        didSet { // Despues de (old Value)
            print("los pason son Valor nuevo:\(pasosTotales), y valor viejo \(oldValue)\n")
        }
    }
}

let contadorDePasosDemo = ContadorDePasosDemo()
contadorDePasosDemo.pasosTotales = 10
contadorDePasosDemo.pasosTotales = 20

class ContadorDePasos {
    var pasosTotales: Int = 0 { // Cuando esto cambia se hara el didSet
        willSet { // Antes de (new Value), no se usa mucho
            print("Los pasos dados son \(newValue)")
        }
        didSet { // Despues de (old Value)
            if pasosTotales > oldValue {
                print("la diferencia con respecto a los pasos dados anteriormente es: \(pasosTotales - oldValue)\n")
            }
        }
    }
}

let contadorDePasos = ContadorDePasos()
contadorDePasos.pasosTotales = 10
contadorDePasos.pasosTotales = 30
contadorDePasos.pasosTotales = 300

class VidaDelJugador {
    var saludDelJugador: Int = 0 {
        didSet {
            if saludDelJugador >= 100 {
                print("Tienes la salud al máximo!")
            } else if saludDelJugador <= 0 {
               print("Game Over")
            } else {
                print("Tu salud actual es de \(saludDelJugador)%, antes tenias \(oldValue)% de salud")
                if saludDelJugador > oldValue {
                    print("Tu salud aumento en \(saludDelJugador - oldValue) punto(s)")
                } else if saludDelJugador < oldValue {
                    print("Tu salud disminuyo en \(oldValue - saludDelJugador) punto(s)")
                }
            }
        }
    }
}

var jugador = VidaDelJugador()
jugador.saludDelJugador = 40
jugador.saludDelJugador = -50
jugador.saludDelJugador = 500
jugador.saludDelJugador = 0
jugador
jugador.saludDelJugador = 40
jugador.saludDelJugador = 50
jugador.saludDelJugador = 20
jugador.saludDelJugador = 10
jugador.saludDelJugador = 3

tituloActual += 1
titulo(tituloActual) // Static 😈 // Type Properties

class MiembroDeLaFamilia { // Tipo
    static var presupuestoGeneral: Int = 300
    var presupuestoPersonal = 0
}

class PersonInHome {
    static var presupuesto = 100
    var name = ""
    func hacerCompras(_ gasto: Int, _ detalle: String) { // Metodo
        PersonInHome.presupuesto -= gasto
        print("\(name) compró \(detalle) y ahora el presupuesto es de \(PersonInHome.presupuesto)")
    }
}

let enzo = PersonInHome()
let meli = PersonInHome()

enzo.name = "Enzo"
meli.name = "Meli"

enzo.hacerCompras(10, "Panes")
meli.hacerCompras(20, "Agua")

moduloActual += 1
modulo(moduloActual)

tituloActual += 1
titulo(tituloActual)

class Contador {
    var contador = 0 // propiedad
    func incrementarPorUno() { // metodo
        self.contador += 1 // se marca la propiedad con self
    }
    func incrementarPor(cantidad: Int) {
        self.contador += cantidad
    }
    func resetearContador() {
        self.contador = 0 // modificar propiedades
    }
}

var contador = Contador()
print(contador.contador)
contador.incrementarPorUno()
print(contador.contador)
contador.incrementarPor(cantidad: 20)
print(contador.contador)
contador.resetearContador()
print(contador.contador)

tituloActual += 1
titulo(tituloActual)

struct Punto {
    var puntoX = 0.0, puntoY = 0.0
    mutating func moverPunto(x deltaX: Double, y deltaY: Double) {
        self.puntoX += deltaX
        self.puntoY += deltaY
    }
}

var instanciaDePunto = Punto()
print(instanciaDePunto)
instanciaDePunto.puntoY
instanciaDePunto.puntoX

instanciaDePunto.moverPunto(x: 20, y: -30)
instanciaDePunto.puntoY
instanciaDePunto.puntoX

print(instanciaDePunto)

enum DiferentesEstados {
    case apagado, bajo, alto
   mutating func siguiente() {
        switch self {
        case .apagado:
            self = .bajo
        case .bajo:
            self = .alto
        case .alto:
            self = .apagado
        }
    }
}

var statusDeEstados = DiferentesEstados.apagado
print(statusDeEstados)
statusDeEstados.siguiente()
print(statusDeEstados)
statusDeEstados.siguiente()
print(statusDeEstados)
statusDeEstados.siguiente()
print(statusDeEstados)

tituloActual += 1
titulo(tituloActual) // Repasar: metodos de clase, el ejemplo

class MetodoDeClases {
    static var varibleString = "Esto es un String"
    static var arrayStatic = [String]()
    class func algunMetodo() {
        print("Hola, \(self.varibleString)")
    }
    func agregarleUnStringAlArrayStatic (elString elMismo: String) {
        MetodoDeClases.arrayStatic.append(contentsOf: [elMismo])
    }
}

MetodoDeClases.algunMetodo()
MetodoDeClases.varibleString

var instanciaDeMetodoDeClase = MetodoDeClases()
instanciaDeMetodoDeClase.self
instanciaDeMetodoDeClase.agregarleUnStringAlArrayStatic(elString: "Prueba")
MetodoDeClases.arrayStatic
instanciaDeMetodoDeClase.agregarleUnStringAlArrayStatic(elString: "Prueba 2")
MetodoDeClases.arrayStatic

struct TrackerDeNiveles {
    static var nivelMasAltoDeTodos = 1
    var nivelActual = 1
    static func desbloquea(_ nivel: Int) { // para desbloquear sig nivel
        if nivel > nivelMasAltoDeTodos {
            nivelMasAltoDeTodos = nivel
        }
    }
    // Comprobar si un nivel esta desbloqueado
    static func estaDesbloqueado(_ nivel: Int) -> Bool {
        return nivel <= nivelMasAltoDeTodos
    }
    // Ver si se puede avanzar a un nivel
    mutating func avanzar(a nivel: Int) -> Bool {
        if TrackerDeNiveles.estaDesbloqueado(nivel) {
            nivelActual = nivel
            return true
        } else {
            return false
        }
    }
}

class Jugador {
    var tracker = TrackerDeNiveles()
    let nombreDeJugador: String
    func completarNivel (nivel: Int) {
        TrackerDeNiveles.desbloquea(nivel + 1)
        tracker.avanzar(a: nivel + 1)
    }
    init(nombre: String) {
        self.nombreDeJugador = nombre
    }
}

var jugador1 = Jugador(nombre: "Luiggy")
TrackerDeNiveles.desbloquea(2)
TrackerDeNiveles.nivelMasAltoDeTodos
TrackerDeNiveles.estaDesbloqueado(5)
tituloActual += 1
titulo(tituloActual)
jugador1
jugador1.tracker.nivelActual
jugador1.tracker.avanzar(a: 4) // no puede, 4 no esta desbloqueado aún

enum SistemaSolarPlanetas: Int {
   case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript (numero: Int) -> SistemaSolarPlanetas {
//        guard numero <= sistemaSolarPlanetas.RawValue.max else {
//            return "Coloque un número Valido"
//        }
        return SistemaSolarPlanetas(rawValue: numero)!
    }
}
SistemaSolarPlanetas[3] // subscripts en enum
print(SistemaSolarPlanetas[6])
type(of: SistemaSolarPlanetas[2])

tituloActual += 1
titulo(tituloActual)

struct Matriz {
    let filas: Int, columnas: Int
    var parrila: [Double] // contenido de la matriz
    init (filas: Int, columnas: Int) {
        self.filas = filas
        self.columnas = columnas
        parrila = Array(repeating: 0.0, count: filas * columnas)
    }
}

var matriz = Matriz(filas: 2, columnas: 2)

tituloActual += 1
titulo(tituloActual)
