import Cocoa
import Darwin

var greeting = "Funciones 😼"

let titulo = "Etiquetas de parametros"


print(titulo, "---")

func saluda(_ persona: String,desde lugarDeOrigen :String)-> String{
    
    return "Hola \(persona), un placer que nos visites desde \(lugarDeOrigen)"
}

print(saluda("Luiggy", desde: "Estados Unidos"))

saluda("Funcion", desde: "XCode")

let titulo2 = "Valores por defecto"
print(titulo2,  "---")

func sumaDosNumero(n1 numero1: Int = 1, n2 numero2: Int = 1) -> Int{
    return numero1 * numero2
}

sumaDosNumero(n1: 90, n2: 23)
sumaDosNumero()

let titulo3 = "Parametros indefinidos (variadics) ---"
print(titulo3)

"..."

func saludosAMuchasPersonas(_ personas: String... ) -> String{
    for persona in personas{
        print("Hola \(persona)")
    }
    return "saludaste a \(personas.count) personas"
}

saludosAMuchasPersonas("Persona0","Pesona1", "Persona2","Persona3")

let titulo4 = "parametros inout ---"

 print(titulo4)

var x = 2
func sumaUno(n numero: inout Int){
    numero += 1
}
x //antes de la func es 2
sumaUno(n: &x)
x //despues de la func es 3


var nEjm = 10, nEjem2 = 2
func intercambiarDosNums(n1 numero1: inout Int, n2 numero2 : inout Int){
    let n1 = numero1
    numero1 = numero2
    numero2 = n1
}

intercambiarDosNums(n1: &nEjm, n2: &nEjem2)
nEjm
nEjem2

//

var titulo5 = "funciones como tipo de dato (function Types) ---"

var valor = 10


func escogerMovimiento(atras : Bool) -> (Int) -> Int{
    
    func moverAdelante(_ n : Int)-> Int{
        return n + 1
    }// (Int)-> Int
    
    func moverAtras(_ n: Int) -> Int{
        return n - 1
    }// (Int)-> Int
    
    return atras ? moverAtras : moverAdelante
}

let moverCercaACero = escogerMovimiento(atras: valor > 0)

while valor != 0{
    print(valor,"...")
    valor = moverCercaACero(valor)
}
print("cero!")




var titulo6 = "Funciones anidadas (Nested Functions) ---"

//func escogerMovimiento(atras : Bool) -> (Int) -> Int{
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
//}


var titulo7 = "Clorues ---"
print(titulo7)

//Clousures sin parametros

let diHola = {
    print("Hola!")
}
diHola()

let saludaA = {
    (nombre : String) -> String in
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

func reversa(s1: String, s2:String) -> Bool{
    return s1 > s2
}

reversa(s1: "Carlos", s2: "Luis")

var nombresEnOrden = nombres.sorted()
var nombesEnReversa = nombres.sorted(by:reversa )

nombesEnReversa = nombres.sorted(by: { st1, st2 in
    return st1 > st2
})
nombesEnReversa = nombres.sorted(by:{ $0 > $1})

nombesEnReversa = nombres.sorted(by: < )

var ponAEdgarPrimero = nombres.sorted(by:{(nombre1: String, nombre2 : String) -> Bool in
    if nombre1 == "Edgar"{
        return true
    }else if nombre2 == "Edgar"{
        return false
    }
    return nombre1 < nombre2
})

print(ponAEdgarPrimero)











