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
   // Vista lista
    var tableView: UITableView!
    let animalNames = ["Dogs", "Cats", "Rabbits", "Horses"]
    override func loadView() {
//        self.view = IntroView()
//        self.view = UIButtonExample()
//        self.view = UILabelDemo()
//        self.view = UIImageDemo()
//        self.view = UITableDemo()
    }
    // override es una función de la clase `UIViewController`
    // quiere decir que mi código es el que se va a escribir
    // no el de la función padre
    override func viewDidLoad() { // ------ aqui se colocan las vistas ------- //
        super.viewDidLoad()
        // Para acceder a la vista desde el controlador se pone view
//        view.backgroundColor = .white
        setUpTableView()
    }
    func setUpTableView() {
        tableView = UITableView(frame: view.bounds)
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    // cuando se vincula a un boton se debe nombrar
    // como la funcion de su accion
}
