//
//  listExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/11/22.
//

// las listas piden 2 cosas
// * Colección de datos
// * Manera visual de mostrar los datos

import SwiftUI

struct Device { // struct de datos
    let title, imageName: String
}

struct listExample: View    {
    let house = [ // Colección de datos
        Device(title: "Laptop", imageName: "laptopcomputer"),
        Device(title: "Mac mini", imageName: "macmini"),
        Device(title: "Mac Pro", imageName: "macpro.gen3"),
        Device(title: "Pantallas", imageName: "display.2"),
        Device(title: "Apple TV", imageName: "appletv")
    ]

    let work = [ // Colección de datos
        Device(title: "iPhone", imageName: "iphone"),
        Device(title: "iPad", imageName: "ipad"),
        Device(title: "Airpods", imageName: "airpods"),
        Device(title: "Apple Watch", imageName: "applewatch")
    ]
    var body: some View {
        List {
            Section {
                ForEach(house, id: \.title) { device in
                    Label(device.title, systemImage: device.imageName)
                }
            } header: { Text("Home") }
            Section {
                ForEach(work, id: \.title) { device in
                    Label(device.title, systemImage: device.imageName)
                }
            } header: { Text("Work") }
        }.listStyle(SidebarListStyle())
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct listExample_Previews: PreviewProvider {
    static var previews: some View {
        listExample()
    }
}
