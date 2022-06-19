//
//  UITableVIewUIKit.swift
//  OnboardingDemo
//
//  Created by lmcm on 6/14/22.
//

import Foundation
import UIKit

struct Device {
    let name: String
    let image: String
}
let house: [Device] = [
    Device(name: "Laptop", image: "laptopcomputer"),
    Device(name: "Mac Mini", image: "macmini"),
    Device(name: "Displays", image: "display.2")
]

final class UITableDemo: UIView {
    private func addSubviews() {
        [].forEach(addSubview)
    }
    private func configConstraints() {
        NSLayoutConstraint.activate([
            //
        ])
    }
    private func setUp() { addSubviews(); configConstraints() }
    override init(frame: CGRect) { super.init(frame: .zero); setUp() }
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
}
