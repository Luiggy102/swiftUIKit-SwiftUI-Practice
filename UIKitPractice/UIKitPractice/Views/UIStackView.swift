//
//  UIStackView.swift
//  UIKitPractice
//
//  Created by lmcm on 6/21/22.
//

import Foundation
import UIKit

final class UIStackViewDemo: UIView {
    private let stackViewDemo: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    func addSubviews() {
        [].forEach(addSubviews)
    }
    func configConstrains() {
        NSLayoutConstraint.activate([
            stackViewDemo.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            stackViewDemo.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            stackViewDemo.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor)
        ])
    }
    override init(frame: CGRect) {
        super.init(frame: .zero)
        addSubviews()
        configConstrains()
    }
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
}
