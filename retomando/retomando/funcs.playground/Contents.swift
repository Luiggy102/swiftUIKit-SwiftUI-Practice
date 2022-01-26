import Cocoa

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

