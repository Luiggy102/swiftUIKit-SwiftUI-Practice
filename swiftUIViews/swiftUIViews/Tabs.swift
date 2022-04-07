//
//  Tabs.swift
//  swiftUIViews
//
//  Created by LMCM on 4/7/22.
//

import SwiftUI

struct Tabs: View {
    var body: some View {
        TabView {
            Text("Tutorial de App ejemplo")
                .font(.largeTitle)
            + Text("\n Desliza a la derecha -> ")
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundColor(.red)
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundColor(.blue)
            Label("Tutorial de App", systemImage: "house.circle")
                .background(Color.green)
                .padding()
        }
        .frame(height: 400)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}
