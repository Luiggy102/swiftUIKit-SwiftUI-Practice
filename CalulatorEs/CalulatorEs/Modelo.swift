//
//  Modelo.swift
//  CalulatorEs
//
//  Created by LMCM on 4/18/22.
//

import Foundation
import SwiftUI

// 1ro:
// se crear el módelo de los botónes

struct BotónTeclado: Hashable {
    let tecla: String
    let esDobleDeAncho: Bool
    let colorDeFondo, colorDeTexto: Color
    let tipo: tipoDeBotón
}

enum tipoDeBotón: Hashable {
    case número(Int)
    case resultado, resetear
    case operación(tipoDeOperación)
}

enum tipoDeOperación: Hashable {
    case suma, multiplicación
}
