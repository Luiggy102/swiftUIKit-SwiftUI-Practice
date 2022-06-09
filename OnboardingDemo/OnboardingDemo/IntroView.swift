//
//  IntroView.swift
//  OnboardingDemo
//
//  Created by lmcm on 6/8/22.
//

import Foundation
import UIKit

final class IntroView: UIView {
    // override no inporta lo que tenga el init de la SuperClase
    // ahora el init ahora lo que este aqui
    // si se quiere dar valor a una propiedad del init padre
    // se lo invoca con el super.init()
    // se debe llamar al init del padre
    // override init ===> super.init
    override init(frame: CGRect) {
        super.init(frame: .zero)
        // a partir de aqui se puede hacer el init de esta vista
        setUp()
    }
    // se necesita si o si este código/completación
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   // a partir de aqui se colocan las vistas
    // Agregar una vista imagen
    // si se quiere que la imagen tengas + propiedades se la agrega como closure
    private let imageViewUIKit: UIImageView = {
        let demoPhoto = UIImageView() // se asignamos UIImage a una constante
        // -- Propiedades de la imagen -- //
        demoPhoto.contentMode = .scaleAspectFit
        demoPhoto.image = UIImage(named: "aestheticPfp")
        // esta propiedad permite añadir `constrains` por código
        // se tiene que añadir cada vez que se quiera hacer `constrains` por código
        demoPhoto.translatesAutoresizingMaskIntoConstraints = false
        return demoPhoto
    }()
    private let textLabel: UILabel = {
        let label = UILabel()
        label.text = "UIKit label"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "MesloLGS NF", size: 26)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private func addSubviews() {
        // agregar un array de vistas a el método
        [imageViewUIKit].forEach(addSubview)
    }
    // sin las `constrains` no apararecerá nada
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            // Para que este en el centro
            imageViewUIKit.centerXAnchor.constraint(equalTo: centerXAnchor),
//            imageViewUIKit.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            // para que este en el top(ignorando el safe Area)
//            imageViewUIKit.topAnchor.constraint(equalTo: view.topAnchor),
            // para que este en el top (respetando el safe area
            imageViewUIKit.topAnchor.constraint(
                equalTo: layoutMarginsGuide.topAnchor
            ),
            textLabel.topAnchor.constraint(equalTo: imageViewUIKit.bottomAnchor, constant: -42),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    private func setUp() {
        addSubviews()
        configureConstraints()
    }
}
