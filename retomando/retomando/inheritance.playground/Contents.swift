import UIKit

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

tituloActual = 15
titulo(tituloActual)

class Vehicle { // la super clase
    var currentSpeed = 0.0
    var description: String {
        return "Viajando a \(currentSpeed) km/h"
    }
    func makeNoise() {
        // do nothing, porque cada vehículo tiene su propia forma de hacer ruido
        print("El sonido depende del vehículo")
    }
}

let someVehicle = Vehicle()
print(someVehicle.description)

class Bicycle: Vehicle { // hijo de vehicle, hereda todas sus propiedades y metodos
    var hasBasket = false // aunq no se vean
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
bicycle.makeNoise()

print(bicycle.description)

class Tandem: Bicycle { // herencia: pasar clase como tipo de dato
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print(tandem.description)

tituloActual += 1
titulo(tituloActual)

class Train: Vehicle {
    var numberOfWagons: Int = 0
    final override func makeNoise() { // override // final
        print("choo choo")
    }
}

let train = Train()
train.description
train.numberOfWagons = 10
train.makeNoise()
tandem.makeNoise()

// super

class Car: Vehicle {
    var gear: UInt8 = 1
    override var description: String {
        return super.description + " en la marcha \(self.gear)" // super
    }
}

let car = Car()
car.currentSpeed = 100.0
print(car.description)
train.makeNoise()

tituloActual += 1
titulo(tituloActual)

struct Fahrenheit {
    var temperature: Double
    var description: String {
            return "la temperatura es de \(temperature) fahrenheit"
    }
    init() { // dar valor a propiedades
        self.temperature = 32
    }
}

let fahrenheit = Fahrenheit()
fahrenheit.temperature
print(fahrenheit.description)

struct Celsius {
    var temperature: Double
    init(fromFahrenheit fahrenheit: Double) { // tranformar celsius a fahrenheit
        self.temperature = (fahrenheit - 32)/1.8
    }
    init(fromKelvin kelvin: Double) {
        self.temperature = kelvin - 273.15
    }
}

let boilingPointWater = Celsius(fromFahrenheit: 212) // Ebullición del agua
print(boilingPointWater.temperature)

let freezingPointWater = Celsius(fromKelvin: 273.15) // Congelación del augua
print(freezingPointWater.temperature)

tituloActual += 1
titulo(tituloActual)

struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) { // Inicializar variables
        self.red = red
        self.blue = blue
        self.green = green
    }
}

class SurveyQuestion {
    let text: String
    var response: String? // si no se pone optional, me va a pedir inicializar
    init(_ text: String) {
        self.text = text
    }
    func ask() {
        print(self.text)
    }
}

let question1 = SurveyQuestion("Te gusta la computación?")
question1.response = "Si me gusta la computación"
print(question1.text, question1.response!)

let question2 = SurveyQuestion("Cual es el mejor lenguaje de programción?")
question2.response = "Swift pues"

print(question2.text, question2.response!)

tituloActual += 1
titulo(tituloActual)

// Designado -> Designado super clase
// Conveniencia -> Otro init de la misma clase
// El último init que se llame siempre debe ser designado // super.init()

class Vehiculo {
    var numeroDeRuedas: UInt8
    var esElectrico: Bool?
    var descripcion: String {
        return "El número de ruedas es \(numeroDeRuedas)"
    }
    init(nDeRuedas: UInt8) { // Designado
        self.numeroDeRuedas = nDeRuedas
    }
    convenience init(esElectrico: Bool?) { // Conveniencia
        self.init(nDeRuedas: 4) // Inicializador de refuerzo
        self.esElectrico = esElectrico // Tiene que tener el init original, o en el hijo el super.init()
    }
}

let teslaX = Vehiculo(esElectrico: true)
print(teslaX.descripcion)

class Carro: Vehiculo {
    let bateriaBase: UInt16
    override var descripcion: String {
        if esElectrico! {
            return super.descripcion + " y es electrico"
        } else {
            return super.descripcion + " y no es electrico"
        }
    }
    init(bateriaEnMh bateria: UInt16) {
        self.bateriaBase = bateria
        super.init(nDeRuedas: 4) // Último init designado
    }
}

let teslaY = Carro(bateriaEnMh: 4000)

tituloActual += 1
titulo(tituloActual)

enum TemperatureUnit {
case kelvin, celsius, fahrenheit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = TemperatureUnit.kelvin
        case "C":
            self = TemperatureUnit.celsius
        case "F":
            self = TemperatureUnit.fahrenheit
        default:
            return nil
        }
    }
}

var someUnit = TemperatureUnit(symbol: "F")
someUnit = .init(symbol: "C")

class Product {
    let name: String
    init?(name: String) { // Designado
        if name.isEmpty { // Puede devolver un nombre vacio
            return nil
        }
        self.name = name
    }
}

class CartItem: Product {
    let quantity: Int
    init?(name: String, quantity: Int) { // Conveniencia
        if quantity < 1 {
            return nil
        }
        self.quantity = quantity
        super.init(name: name) // Designado al final
    }
}

if let someSocks = CartItem(name: "Socks", quantity: 2) {
    print("\(someSocks.name) - \(someSocks.quantity)")
}

tituloActual += 1
titulo(tituloActual)

// Jugador que muere, hacer que se desinicialice sus propiedades/métodos

class Banco {
    static var momedasEnElBanco = 2_000
    static func retirar(monedas monedasSolicitadas: Int) -> Int {
        // Si el jugador pide más de lo que hay, va a tomar todo lo que hay en el banco
        let monedasADar = min(monedasSolicitadas, momedasEnElBanco)
        momedasEnElBanco -= monedasADar
        return monedasADar
    }
    static func depositar(monedas: Int) {
        momedasEnElBanco += monedas
    }
}

class Jugador {
    var monedasEnElBolsillo: Int
    init(monedas: Int) {
        self.monedasEnElBolsillo = Banco.retirar(monedas: monedas)
    }
    func ganar(monedas: Int) {
        monedasEnElBolsillo += Banco.retirar(monedas: monedas)
    }
    deinit { // cuando jugador muere(jugador = nil), devuelve las monedas que tiene
        Banco.depositar(monedas: monedasEnElBolsillo)
    }
}

// de tipo opcional, para desinicializarlo en el futuro
var jugador1: Jugador? = Jugador(monedas: 100)
Banco.momedasEnElBanco
jugador1?.ganar(monedas: 200)
jugador1?.monedasEnElBolsillo
Banco.momedasEnElBanco

jugador1 = nil // desinicializador
print(Banco.momedasEnElBanco)

tituloActual += 1
titulo(tituloActual)
