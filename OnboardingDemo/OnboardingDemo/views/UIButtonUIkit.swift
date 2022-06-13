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
        // .filled() es para que le botón tenga un background
        var buttonConfig = UIButton.Configuration.filled() // para configurar el botón
        buttonConfig.title = "Botón demo"
        buttonConfig.subtitle = "Este es un botón de prueba"
        buttonConfig.image = UIImage(systemName: "person.circle.fill")
        let button = UIButton(type: .system)
        button.configuration = buttonConfig
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let demoButton2: UIButton = {
        // .filled() es para que le botón tenga un background
        var buttonConfig = UIButton.Configuration.bordered() // para configurar el botón
        // config titulos
        buttonConfig.title = "Botón demo"
        buttonConfig.titleAlignment = .center // titulo en el centro
        buttonConfig.subtitle = "Este es un botón de prueba"
        // config imagen
        buttonConfig.image = UIImage(systemName: "person.circle.fill")
        buttonConfig.imagePadding = 12
        buttonConfig.imagePlacement = .trailing
        let button = UIButton(type: .system)
        button.configuration = buttonConfig
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let demoButton3: UIButton = {
        var buttonConfig = UIButton.Configuration.bordered()
        let button = UIButton(type: .system)
        // config titulos
        buttonConfig.title = "Botón demo"
        buttonConfig.titleAlignment = .center
        buttonConfig.baseForegroundColor = .white
        buttonConfig.subtitle = "Este es un botón de prueba"
        // config imagen
        buttonConfig.image = UIImage(systemName: "person.circle.fill")
        buttonConfig.imagePadding = 12
        buttonConfig.imagePlacement = .top
        buttonConfig.buttonSize = .large
        buttonConfig.baseBackgroundColor = .systemPurple
        //
        button.configuration = buttonConfig
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    // `lazy var` para que self ya este inicializado y llamar al método del botón
    private lazy var demoButton4: UIButton = {
        var buttonConfig = UIButton.Configuration.bordered()
        // Declarar la acción cuando pase el botón
        // primary action
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.printMessage()
        }))
        // config titulos
        buttonConfig.title = "Botón demo"
        buttonConfig.titleAlignment = .center
        buttonConfig.subtitle = "Este es un botón de prueba"
        // config imagen
        buttonConfig.image = UIImage(systemName: "person.circle.fill")
        buttonConfig.imagePadding = 12
        buttonConfig.imagePlacement = .top
        buttonConfig.buttonSize = .large
        //
        button.configuration = buttonConfig
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    // -- fin vistas -- //
    // 5.- crear la función encargada de crear las vistas en array
    private func addSubviews() {
        [demoButton1, demoButton2, demoButton3, demoButton4].forEach(addSubview)
    }
    // 6.- crear la función encargada de configurar los restricciones `constraints`
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            // 1
            demoButton1.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            demoButton1.centerXAnchor.constraint(equalTo: centerXAnchor),
            // 2
            demoButton2.topAnchor.constraint(equalTo: demoButton1.bottomAnchor, constant: 20),
            demoButton2.centerXAnchor.constraint(equalTo: centerXAnchor),
            // 3
            demoButton3.topAnchor.constraint(equalTo: demoButton2.bottomAnchor, constant: 20),
            demoButton3.centerXAnchor.constraint(equalTo: centerXAnchor),
            // 4
            demoButton4.topAnchor.constraint(equalTo: demoButton3.bottomAnchor, constant: 20),
            demoButton4.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    // 7.- crear la función encargada de unir las vistas con las restricciones
    private func setUp() { addSubviews(); configureConstraints() }
    // ========= funciones extras ==================== //
    func printMessage() {
        print("Button tapped")
    }
}
