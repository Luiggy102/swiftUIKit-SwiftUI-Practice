//
//  ViewController.swift
//  OnboardingDemo
//
//  Created by lmcm on 6/6/22.
//

import UIKit

// ViewController
// ViewController es la manera de uikit para mostrar las vistas

// 1 view controller suele ser una vista entera
// aunq no siempre es asi


class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var buttonName: UIButton!
    
    // override es una función de la clase `UIViewController`
    // quiere decir que mi código es el que se va a escribir
    // no el de la función padre
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.textColor = .blue
        buttonName.setTitle("new button", for: .normal)
    }
    // cuando se vincula a un boton se debe nombrar
    // como la funcion de su accion
    @IBAction func didTapOnTestButton(_ sender: Any) {
        print("Button tapped")
    }
}

