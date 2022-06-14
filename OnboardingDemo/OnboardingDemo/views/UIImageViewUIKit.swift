//
//  UIImageViewUIKit.swift
//  OnboardingDemo
//
//  Created by lmcm on 6/14/22.
//

import Foundation
import UIKit

final class UIImageDemo: UIView {
    private let imageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "gamecontroller.fill")
        // para que la imagen se muestre tal y como es
        // se adaptara la imagen original al ancho y alto dado 
        image.contentMode = .scaleAspectFit
        image.tintColor = .purple
        image.translatesAutoresizingMaskIntoConstraints = false
        // linea a la imagen
        image.layer.cornerRadius = 150
        image.layer.borderWidth = 5
        image.layer.borderColor = UIColor.blue.cgColor // se transforma a `cgColor`
        return image
    }()
    private func addSubviews() {
        [imageView].forEach(addSubview)
    }
    private func configConstraints() {
        NSLayoutConstraint.activate([
            // posición
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            // ancho y alto
            imageView.widthAnchor.constraint(equalToConstant: 300),
            imageView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    private func setUp() { addSubviews(); configConstraints() }
    override init(frame: CGRect) { super.init(frame: .zero); setUp() }
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
}
