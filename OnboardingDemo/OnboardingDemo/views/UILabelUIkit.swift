//
//  UILabelUIkit.swift
//  OnboardingDemo
//
//  Created by lmcm on 6/13/22.
//

import Foundation
import UIKit

final class UILabelDemo: UIView {
    private let label1: UILabel = {
        let label = UILabel()
        label.text = "UIKit label"
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 26)
        label.textColor = .systemPurple
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let label2: UILabel = {
        let label = UILabel()
        // si no se pone constraints de los lados horizontales, se saldrá de la pantalla
        label.text = "Otro elemento muy importante que vamos a ver en nuestro curso iOS es la vista UILabel. Esta vista nos permite mostrar texto, y este texto lo podemos personalizar"
        label.font = .systemFont(ofSize: 12)
        // para que los textos largos salgan en la pantalla
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // Atributted string
    // todos los parametros de un string en un diccionario
    // para tener todo en un solo sitio
    // se divide en `text` y `[NSAtributtedString.key: Any]`
    private let label3: UILabel = {
        // texto
        let text = "Otro elemento muy importante que vamos a ver en nuestro curso iOS es la vista UILabel. Esta vista nos permite mostrar texto, y este texto lo podemos personalizar"
        // atributted text
        let atributtedText: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 32),
            .backgroundColor: UIColor.blue,
            .foregroundColor: UIColor.white,
            .underlineColor: UIColor.red,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        let atributtedString = NSAttributedString(string: text, attributes: atributtedText)
        let label = UILabel()
        // agregarle el atributed string al label
        label.attributedText = atributtedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let label4: UILabel = {
        let label = UILabel()
        label.text = "label prueba"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private func addSubviews() {
        [label1, label2, label3, label4].forEach(addSubview)
    }
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            // 1
            label1.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            label1.centerXAnchor.constraint(equalTo: centerXAnchor),
            // 2
            label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 20),
            label2.centerXAnchor.constraint(equalTo: centerXAnchor),
            label2.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            label2.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            // 3
            label3.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 20),
            label3.centerXAnchor.constraint(equalTo: centerXAnchor),
            label3.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            label3.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            // 4
            label4.topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 20),
            label4.centerXAnchor.constraint(equalTo: centerXAnchor),
            label4.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            label4.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor)
        ])
    }
    private func setUp() { addSubviews(); configureConstraints() }
    override init(frame: CGRect) { super.init(frame: .zero); setUp() }
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
}
