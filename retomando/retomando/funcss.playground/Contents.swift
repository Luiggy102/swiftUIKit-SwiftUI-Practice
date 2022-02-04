import SwiftUI
// import Cocoa
import Darwin

var greeting = "Funciones 😼"

let titulo = "Etiquetas de parametros"

print(titulo, "---")

func saluda(_ persona: String, desde lugarDeOrigen: String) -> String {
    return "Hola \(persona), un placer que nos visites desde \(lugarDeOrigen)"
}

print(saluda("Luiggy", desde: "Estados Unidos"))

saluda("Funcion", desde: "XCode")

let titulo2 = "Valores por defecto"
print(titulo2, "---")

func sumaDosNumero(n1 numero1: Int = 1, n2 numero2: Int = 1) -> Int {
    return numero1 * numero2
}

sumaDosNumero(n1: 90, n2: 23)
sumaDosNumero()

let titulo3 = "Parametros indefinidos (variadics) ---"
print(titulo3)

"..."

func saludosAMuchasPersonas(_ personas: String... ) -> String {
    for persona in personas {
        print("Hola \(persona)")
    }
    return "saludaste a \(personas.count) personas"
}

saludosAMuchasPersonas("Persona0", "Pesona1", "Persona2", "Persona3")

let titulo4 = "parametros inout ---"

 print(titulo4)

var variableX = 2
func sumaUno(n numero: inout Int) {
    numero += 1
}
// antes de la func es 2
sumaUno(n: &variableX)
// despues de la func es 3

var nEjm = 10, nEjem2 = 2
func intercambiarDosNums(nn1 numero1: inout Int, nn2 numero2: inout Int) {
    let nn1 = numero1
    numero1 = numero2
    numero2 = nn1
}

intercambiarDosNums(nn1: &nEjm, nn2: &nEjem2)
nEjm
nEjem2

//

var titulo5 = "funciones como tipo de dato (function Types) ---"

var valor = 10

func escogerMovimiento(atras: Bool) -> (Int) -> Int {
    func moverAdelante(_ numero: Int) -> Int {
        return numero +  1
    }// (Int)-> Int
    func moverAtras(_ numero: Int) -> Int {
        return numero - 1
    }// (Int)-> Int
    return atras ? moverAtras : moverAdelante
}

let moverCercaACero = escogerMovimiento(atras: valor > 0)

while valor != 0 {
    print(valor, "...")
    valor = moverCercaACero(valor)
}
print("cero!")

var titulo6 = "Funciones anidadas (Nested Functions) ---"

// func escogerMovimiento(atras : Bool) -> (Int) -> Int{
//
//    func moverAdelante(_ n : Int)-> Int{
//        return n + 1
//    }// (Int)-> Int
//
//    func moverAtras(_ n: Int) -> Int{
//        return n - 1
//    }// (Int)-> Int
//
//    return atras ? moverAtras : moverAdelante
// }

var titulo7 = "Clorues ---"
print(titulo7)

// Clousures sin parametros

let diHola = {
    print("Hola!")
}
diHola()

let saludaA = { (nombre: String) -> String in
    "Hola \(nombre)"
}
saludaA("Luis")
saludaA("Ya ves")

/*
 { (params) -> return type in
    //Código del closure
 }
 */

let nombres = ["Christian", "Ricardo", "Juan Gabriel", "Edgar", "Freddy"]

func reversa(ss1: String, ss2: String) -> Bool {
    return ss1 > ss2
}

reversa(ss1: "Carlos", ss2: "Luis")

var nombresEnOrden = nombres.sorted()
var nombesEnReversa = nombres.sorted(by: reversa )

nombesEnReversa = nombres.sorted(by: { st1, st2 in
    return st1 > st2
})
nombesEnReversa = nombres.sorted(by: { $0 > $1})

nombesEnReversa = nombres.sorted(by: < )

var ponAEdgarPrimero = nombres.sorted(by: {(nombre1: String, nombre2: String) -> Bool in
    if nombre1 == "Edgar"{
        return true
    } else if nombre2 == "Edgar"{
        return false
    }
    return nombre1 < nombre2
})

print(ponAEdgarPrimero)

let saludoConClousures = { (nombre: String) -> String in
    return "Hola \(nombre)"
}

saludoConClousures("Alex")

print("es es un saludo = \(saludoConClousures("yo cuando")) ")

// Imprimir filtro de números

let arrayDeNumeros = [-3, -2, -1, 0, 1, 2, 3]

func númerosMenoresQueValor(valor: Int, arrayDeNumeros numeros: [Int]) -> [Int] {
    var numerosFiltradosMenores = [Int]()
    for num in numeros {
        if num < valor {
            numerosFiltradosMenores.append(num)
        }
        print(num)
    }
    return numerosFiltradosMenores
}

númerosMenoresQueValor(valor: 9, arrayDeNumeros: arrayDeNumeros)

let titulo8 = "Trailling closures ---" // es una sintaxis para los closures

print(titulo8)

func funcionQueTomaUnClosure(closure: () -> Void) {
    // cuerpo de la función
}

funcionQueTomaUnClosure {
    // cuerpo del closure
}

// Transformar los números a letras con Closures
// Se necesita .map para transfomar
// .map necesita un closure para funcionar

let nombresDeDigitos: [Int: String]

nombresDeDigitos = [
    0: "Cero",
    1: "Uno",
    2: "Dos",
    3: "Tres",
    4: "Cuatro",
    5: "Cinco",
    6: "Seis",
    7: "Siete",
    8: "Ocho",
    9: "Nueve"
]

let digitos: [Int]
digitos = [2, 323, 443, 4312, 22]

print(nombresDeDigitos[9]!)
// Map devuelve un array
//                                     //en *numeros* le colocamos el array de números para que devuelve un string
let stringDeLosNumeros = digitos.map { (numero) -> String in
    var numero = numero
    var salida = ""
    repeat {
        salida = nombresDeDigitos[numero%10]! + salida
        numero /= 10
    }while numero > 0
    return salida
}

1%10
2%10

let titulo10 = { () -> Void in
    print("Capturing closures ---")
}
titulo10()

// Hacer incrementador por si mismo

func hacerIncrementador(cantidadAIncrementar: Int) -> () -> Int {
    var contadorTotal = 0
    func incrementador() -> Int {
        contadorTotal += cantidadAIncrementar
        return contadorTotal
    }
    return incrementador
}

let aumentarEnDiez = hacerIncrementador(cantidadAIncrementar: 10)
/* Cuando se llama asi nomas, devuelte el tipo de closure */

aumentarEnDiez()// Para hacer que funcione se pone los parentesis
aumentarEnDiez()// Como el numero 10  se queda en la constante, va a aumentar por 10
aumentarEnDiez()// 30

let aumentarEnOcho = hacerIncrementador(cantidadAIncrementar: 8)
aumentarEnOcho()// CADA VARIABLE QUE DEVUELVA UN CLOSURE TIENE SUS VARIABLES LOCALES
// POR ESO FUNCIONA
aumentarEnOcho()

// Decrementador de números negativos

func decrementadorDeNúmerosNegativos(cantidad: Int) -> () -> Int {
   var contador = 0
    func decrementador() -> Int {
        contador += cantidad
        return contador
    }
    return decrementador
}

let decrementarEnMenosDiez = decrementadorDeNúmerosNegativos(cantidad: -10)
print(decrementarEnMenosDiez())
print(decrementarEnMenosDiez())
print(decrementarEnMenosDiez())

let titulo11 = { () -> Void in
    print("@escaping closures ---")
}

titulo11()

var manejadorDeCompletaciones: [() -> Void] = []

func funcionConUnEscapingClosure(manejadorDeCompletacion: @escaping () -> Void) {
    // Con eso se agrega todos los closures que sean `() -> Void`
    manejadorDeCompletaciones.append(manejadorDeCompletacion)
}

manejadorDeCompletaciones.count
manejadorDeCompletaciones.append(titulo11)
manejadorDeCompletaciones.append(titulo10)
manejadorDeCompletaciones.first?()
manejadorDeCompletaciones[1]()
manejadorDeCompletaciones.count
manejadorDeCompletaciones.first?()

func funcionSinEscapingClosure(closure: () -> Void) {
    closure()
}

class Pruebitap {
    var variableY = 1
    func hazAlgo() {
        funcionConUnEscapingClosure {
            self.variableY = 100
        }
        funcionSinEscapingClosure {
            variableY = 200
        }
    }
}

let instaciaDePruebitap = Pruebitap()
instaciaDePruebitap.variableY
instaciaDePruebitap.hazAlgo()
instaciaDePruebitap.variableY

manejadorDeCompletaciones.count

enum LeccionesQueSiguen {
    case enumerationsClaseVaga, enumerationsCodigosDeBarras, enumerationsConRawValues
}

let titulo12 = LeccionesQueSiguen.enumerationsClaseVaga
type(of: titulo12)
print(titulo12, "---")

enum GenerosMusicales: CaseIterable {
    case rock, bachata, funk, salsa, jazz, latin, house
}

let numeroDeGenerosMusicales = GenerosMusicales.allCases.count
print("Los generos musicales actuales son:", numeroDeGenerosMusicales)

for generosMusicales in GenerosMusicales.allCases {
    print("*", generosMusicales)
}

let titulo13 = LeccionesQueSiguen.enumerationsCodigosDeBarras
print(titulo13, "---")

enum CódigoDeBarra {
    case códigoUpc(Int, Int, Int, Int)
    case códigoQr(String)
}

var códigoDeProducto: CódigoDeBarra = .códigoUpc(2, 28329, 13129, 9)
// códigoDeProducto = .códigoQr("qwertyuiop")

print(códigoDeProducto)

switch códigoDeProducto {
    case let .códigoQr(código):
        print("El código QR del producto es \(código)")
    case let .códigoUpc(numeroDelSistema, manufactor, producto, chequeo):
        print("El Código Upc es \(numeroDelSistema),\(manufactor),\(producto),\(chequeo)")
}
