//
//  GeometryPreferenceKeyExample.swift
//  swiftUIViews
//
//  Created by LMCM on 4/14/22.
//

import SwiftUI

struct GeometryPreferenceKeyExample: View {
    @State private var rectSize: CGSize = .zero
    var body: some View {
        VStack {
            Text("Hola Mundo")
                .frame(width: rectSize.width, height: rectSize.height)
                .background(Color.blue)
                .foregroundColor(.white)
            Spacer()
            HStack {
                Rectangle()
                GeometryReader { proxy in
                    Rectangle()
//                        .preference(key: RectSize.self, value: proxy.size)
                        .updatedRectGeoSize(proxy.size)
                        .overlay {
                            Text("\(proxy.size.width)\n \(proxy.size.height)")
                                .foregroundColor(.white)
                        }
                }
                Rectangle()
            }.frame(height: 55)
        }.onPreferenceChange(RectSize.self) { value in
            self.rectSize = value
        }
    }
}

struct RectSize: PreferenceKey {
    static var defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}

extension View {
    func updatedRectGeoSize(_ value: CGSize) -> some View {
        preference(key: RectSize.self, value: value)
    }
}

struct GeometryPreferenceKeyExample_Previews: PreviewProvider {
    static var previews: some View {
        GeometryPreferenceKeyExample()
    }
}
