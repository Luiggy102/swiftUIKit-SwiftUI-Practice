//
//  UIButtonUIkit.swift
//  OnboardingDemo
//
//  Created by lmcm on 6/9/22.
//

import Foundation
import UIKit

// -- Separar las views del controler -- //
// 1.- crear la class con `UIView`
final class UIButtonExample: UIView {
    // 2.- hacer override al init
    override init(frame: CGRect) {
        // 3.- llamar al init del padre, `super.init` y darle frame .zero
        super.init(frame: .zero)
        // 8.- agregar la función que configura las restricciones y agrega las vistas al init
        setUp()
    }
    // 4.- hacer la autocompletación de xcode
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    // -- Inicio vistas -- //
    private let demoButton1: UIButton = {
        var buttonConfig = UIButton.Configuration.filled() // para configurar el botón
        buttonConfig.title = "Botón demo"
        buttonConfig.subtitle = "Este es un botón de prueba"
        buttonConfig.image = UIImage(systemName: "person.circle.fill")
        let button = UIButton(type: .system)
        button.configuration = buttonConfig
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    // -- fin vistas -- //
    // 5.- crear la función encargada de crear las vistas en array
    private func addSubviews() {
        [demoButton1].forEach(addSubview)
    }
    // 6.- crear la función encargada de configurar los restricciones `constraints`
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            demoButton1.centerXAnchor.constraint(equalTo: centerXAnchor),
            demoButton1.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    // 7.- crear la función encargada de unir las vistas con las restricciones
    private func setUp() { addSubviews(); configureConstraints()
    }
}
