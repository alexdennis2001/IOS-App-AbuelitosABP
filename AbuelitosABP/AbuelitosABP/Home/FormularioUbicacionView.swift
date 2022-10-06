//
//  FomularioUbicacionView.swift
//  AbuelitosABP
//
//  Created by Arturo on 05/10/22.
//

import SwiftUI

struct FormularioUbicacionView: View {
    @State private var nombre: String = ""
    @State private var apellidoPaterno: String = ""
    @State private var apellidoMaternto: String = ""
    @State private var edad: String = ""
    @State private var estatura: String = ""
    @State private var peso: String = ""
    @AppStorage("Page") var currentPage: Page?
    let titleFields = ["Estado", "Municipio", "Zona", "Decanato", "Parroquia/Capilla", "Dirección"]
    static var uniqueKey: String {
        UUID().uuidString
    }
    static let optionsSexo: [DropdownOption] = [
        DropdownOption(key: uniqueKey, value: "Hombre"),
        DropdownOption(key: uniqueKey, value: "Mujer")
    ]
    static let optionsTipoSangre: [DropdownOption] = [
        DropdownOption(key: uniqueKey, value: "A+"),
        DropdownOption(key: uniqueKey, value: "A-"),
        DropdownOption(key: uniqueKey, value: "B+"),
        DropdownOption(key: uniqueKey, value: "B-"),
        DropdownOption(key: uniqueKey, value: "AB+"),
        DropdownOption(key: uniqueKey, value: "AB-"),
        DropdownOption(key: uniqueKey, value: "O+")
    ]
    var body: some View {
        GeometryReader{ geo in
            Color("BackgroundColor")
                .ignoresSafeArea(.all)
            ZStack(){
                VStack(alignment: .center){
                    HStack(){
                        VStack{
                            Text("Formulario")
                                .font(.system(size: 56, weight: .semibold))
                            Text("Llena el siguiente formulario")
                                .font(.system(size: 20, weight: .medium))
                        }
                        Image("logo_formulario")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width * 0.2, height: geo.size.height * 0.15)
                    }
                    .padding()
                    VStack(alignment: .center, spacing: 35){
                        VStack(spacing: 20){
                            Text("Ubicación")
                                .font(.system(size: 28, weight: .semibold))
                            SelectorView(title: titleFields[0], placeholder: "Seleccionar", options: FormularioUbicacionView.optionsSexo)
                                .frame(width: geo.size.width * 0.70, height: geo.size.height * 0.07)
                            SelectorView(title: titleFields[1], placeholder: "Seleccionar", options: FormularioUbicacionView.optionsSexo)
                                .frame(width: geo.size.width * 0.70, height: geo.size.height * 0.07)
                            SelectorView(title: titleFields[2], placeholder: "Seleccionar", options: FormularioUbicacionView.optionsSexo)
                                .frame(width: geo.size.width * 0.70, height: geo.size.height * 0.07)
                            SelectorView(title: titleFields[3], placeholder: "Seleccionar", options: FormularioUbicacionView.optionsSexo)
                                .frame(width: geo.size.width * 0.70, height: geo.size.height * 0.07)
                            SelectorView(title: titleFields[4], placeholder: "Seleccionar", options: FormularioUbicacionView.optionsSexo)
                                .frame(width: geo.size.width * 0.70, height: geo.size.height * 0.07)
                            TextFieldView(title: titleFields[5], label: "Ej. Calle, # de Casa y Colonia", fieldContent: $nombre)
                                .frame(width: geo.size.width * 0.7, height: geo.size.height * 0.07)
                        }
                        .padding(.bottom, 15)
                        .frame(width: geo.size.width * 0.85, height: geo.size.height * 0.7)
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .fill(Color("CardColorFormularioU"))
                        )
                        HStack(){
                            Button {
                                currentPage = .formularioPersonal
                            } label: {
                                Text("Atras")
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundColor(.white)
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color("ButtonColor"))
                                            .frame(width: geo.size.width * 0.35, height: geo.size.height * 0.08)
                                    )
                            }
                            Spacer()
                            Button {
                                currentPage = .menu
                            } label: {
                                Text("Terminar")
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundColor(.white)
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color("ButtonColor"))
                                            .frame(width: geo.size.width * 0.35, height: geo.size.height * 0.08)
                                    )
                            }
                        }
                        .frame(width: geo.size.width * 0.65, height: geo.size.height * 0.05)
                        .padding(.leading, 20)
                    }
                }
                .padding()
            }
        }
    }
}

struct FormularioUbicacionView_Previews: PreviewProvider {
    static var previews: some View {
        FormularioUbicacionView()
            .previewDevice("iPad (9th generation)")
    }
}


