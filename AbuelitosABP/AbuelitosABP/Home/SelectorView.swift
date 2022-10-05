//
//  SelectorView.swift
//  AbuelitosABP
//
//  Created by Arturo on 03/10/22.
//

import SwiftUI

struct SelectorView: View {
    @State public var title: String
    @State public var placeholder: String
    @State public var options: [DropdownOption]
    var body: some View {
        GeometryReader{ geo in
            VStack(alignment: .leading, spacing: 5){
                HStack{
                    Text(title)
                        .font(.system(size: 16, weight: .regular))
                    Text("*")
                        .foregroundColor(.red)
                        .font(.system(size: 16, weight: .regular))
                }
                Group {
                    DropdownSelector(
                        placeholder: placeholder,
                        options: options,
                        onOptionSelected: { option in
                            print(option)
                        })
                }
            }
        }
    }
}

struct SelectorView_Previews: PreviewProvider {
    static var uniqueKey: String {
        UUID().uuidString
    }
    
    static let options: [DropdownOption] = [
        DropdownOption(key: uniqueKey, value: "Hombre"),
        DropdownOption(key: uniqueKey, value: "Mujer"),
    ]
    
    static var previews: some View {
        SelectorView(title: "Sexo", placeholder: "Seleccionar", options: options)
    }
}
