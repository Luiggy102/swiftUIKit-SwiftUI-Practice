//
//  datepickerExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/8/22.
//

import SwiftUI

struct datepickerExample: View {
    @State var currentDate: Date = Date()
    var body: some View {
        Form {
            Text("Selecionar fecha")
            DatePicker("Fecha", selection: $currentDate)
            Text("La fecha selecionada es: \(currentDate)")
            Text(currentDate, style: .date)
            Text("Para que no tome fechas pasadas:")
                .bold()
            DatePicker("Solo fechas del futuro",
                       selection: $currentDate,
                       in: Date()..., // `Date()...` quiere decir solo futuras
                       displayedComponents: .date)
            Text("Con varias formas")
            DatePicker("Fecha", selection: $currentDate)
                .datePickerStyle(.wheel)
            DatePicker("Fecha", selection: $currentDate)
                .datePickerStyle(.graphical)
        }
    }
}

struct datepickerExample_Previews: PreviewProvider {
    static var previews: some View {
        datepickerExample()
    }
}
