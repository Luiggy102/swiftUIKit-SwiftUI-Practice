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
    override func loadView() {
//        self.view = IntroView()
        self.view = UIButtonExample()
    }
    // override es una función de la clase `UIViewController`
    // quiere decir que mi código es el que se va a escribir
    // no el de la función padre
    override func viewDidLoad() { // ------ aqui se colocan las vistas ------- //
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Para acceder a la vista del controlador se pone view
        view.backgroundColor = .white
    }
    // cuando se vincula a un boton se debe nombrar
    // como la funcion de su accion
}
