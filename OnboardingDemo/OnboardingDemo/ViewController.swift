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
//    override func loadView() {
//        self.view = IntroView()
//        self.view = UIButtonExample()
//        self.view = UILabelDemo()
//        self.view = UIImageDemo()
//        self.view = UITableDemo()
//    }
    // override es una función de la clase `UIViewController`
    // quiere decir que mi código es el que se va a escribir
    // no el de la función padre
    override func viewDidLoad() { // ------ aqui se colocan las vistas ------- //
        super.viewDidLoad()
        // Para acceder a la vista desde el controlador se pone view
        setUpTableView()
    }
    // crear una lista con un array de datos
    func setUpTableView() {
        // 1. declarar la vista
        tableView = UITableView(frame: view.bounds)
        view.addSubview(tableView)
        // 2. darle los constrainsts
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        // 3. cada tipo de celda necesita un identificador único
        // darle un identificador único a las celdas de la vista
        // sirve para registrar y para cuando creamos o reusamos una celda
        // hay que darle tableViewCell si se quiere darle la celda por defecto
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "AnimalCell")
        // 4. Hacer el data source para la tabla
        tableView.dataSource = self
        // 5. Hacer el delegato para la tabla
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    // los dos metodos obligatorios del table view source
    // el # de filas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalNames.count
    }
    // la celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell")! as UITableViewCell
        // para sacarle el indice al array se usa el indexPath
        let model = animalNames[indexPath.row]
        var listContentConfig = UIListContentConfiguration.cell()
        listContentConfig.text = model.description
        cell.contentConfiguration = listContentConfig
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    // Hacer que haga algo con el item selecionado
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // agarrar el indice de la fila tocada
        tableView.deselectRow(at: indexPath, animated: true)
        // realizar acción con la file tocada
        print(animalNames[indexPath.row])
    }
}
