//
//  TextFieldView.swift
//  AbuelitosABP
//
//  Created by Arturo on 03/10/22.
//

import SwiftUI

struct TextFieldView: View {
    @State public var title: String
    @State public var label: String
    @Binding var fieldContent: String
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
                TextField(label, text: $fieldContent)
                    .textFieldStyle(.roundedBorder)
                    .font(.system(size: 16, weight: .regular))
            }
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    @State static var fieldContent = " "
    static var previews: some View {
        TextFieldView(title: "Nombre", label: "Ej. José Emiliano", fieldContent: .constant(""))
    }
}
