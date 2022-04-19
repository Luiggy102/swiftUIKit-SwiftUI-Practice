//
//  Matriz.swift
//  CalulatorEs
//
//  Created by LMCM on 4/18/22.
//

import Foundation
import UIKit
import SwiftUI

// 2.- Se van a crear 2 secciones

// una donde todas la teclas son iguales
// otra donde el cero ocupa más espacio

struct Matriz {
    // será una array de los botones del teclado
    // esto representa los datos para el forEach
    static let primeraSecciónDatos: [BotónTeclado] = [
        // primera fila
        .init(tecla: "AC",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoGrisClaro,
              colorDeTexto: .black,
              tipo: .resetear),
        .init(tecla: "+/-",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoGrisClaro,
              colorDeTexto: .black,
              tipo: .resetear),
        .init(tecla: "%",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoGrisClaro,
              colorDeTexto: .black,
              tipo: .resetear),
        .init(tecla: "/",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoNaranja,
              colorDeTexto: .white,
              tipo: .resetear),
        // segunda fila
        .init(tecla: "7",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoGrisOscuro,
              colorDeTexto: .white,
              tipo: .número(7)),
        .init(tecla: "8",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoGrisOscuro,
              colorDeTexto: .white,
              tipo: .número(8)),
        .init(tecla: "9",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoGrisOscuro,
              colorDeTexto: .white,
              tipo: .número(8)),
        .init(tecla: "X",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoNaranja,
              colorDeTexto: .white,
              tipo: .operación(.multiplicación)),
        // tercera fila
        .init(tecla: "4",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoGrisOscuro,
              colorDeTexto: .white,
              tipo: .número(4)),
        .init(tecla: "5",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoGrisOscuro,
              colorDeTexto: .white,
              tipo: .número(5)),
        .init(tecla: "6",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoGrisOscuro,
              colorDeTexto: .white,
              tipo: .número(6)),
        .init(tecla: "-",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoNaranja,
              colorDeTexto: .white,
              tipo: .resetear),
        // cuarta fila
        .init(tecla: "1",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoGrisOscuro,
              colorDeTexto: .white,
              tipo: .número(1)),
        .init(tecla: "2",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoGrisOscuro,
              colorDeTexto: .white,
              tipo: .número(2)),
        .init(tecla: "3",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoGrisOscuro,
              colorDeTexto: .white,
              tipo: .número(3)),
        .init(tecla: "+",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoNaranja,
              colorDeTexto: .white,
              tipo: .operación(.suma)),
    ]
    static let segundaSecciónDatos: [BotónTeclado] = [
        .init(tecla: "0",
              esDobleDeAncho: true,
              colorDeFondo: personalizadoGrisOscuro,
              colorDeTexto: .white,
              tipo: .número(0)),
        .init(tecla: ",",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoGrisOscuro,
              colorDeTexto: .white,
              tipo: .resetear),
        .init(tecla: "=",
              esDobleDeAncho: false,
              colorDeFondo: personalizadoNaranja,
              colorDeTexto: .white,
              tipo: .resultado)
    ]
    
    // 3.- Hacer las secciones de datos a cuadricula
    // esto representan las columnas para el grid
    // hay que pedir el ancho de la cuadriula en un closure
    static let primeraSecciónCuadricula: (CGFloat) -> [GridItem] = { ancho in
        return Array(repeating: GridItem(.flexible(minimum: ancho), spacing: 0)
                     , count: 4)
    }
    static let segundaSecciónCuadricula: (CGFloat) -> [GridItem] = { ancho in
        return [
            GridItem(.flexible(minimum: ancho * 2), spacing: 0),
            GridItem(.flexible(minimum: ancho), spacing: 0),
            GridItem(.flexible(minimum: ancho), spacing: 0),
        ]
    }
}
