//
//  FormularioDatosPersonalesView.swift
//  AbuelitosABP
//
//  Created by Arturo on 03/10/22.
//

import SwiftUI

struct FormularioDatosPersonalesView: View {
    @State private var nombre: String = ""
    @State private var apellidoPaterno: String = ""
    @State private var apellidoMaternto: String = ""
    @State private var edad: String = ""
    @State private var estatura: String = ""
    @State private var peso: String = ""
    @AppStorage("Page") var currentPage: Page?
    let titleFields = ["Nombre", "Apellido Paterno", "Apellido Materno", "Edad", "Sexo", "Estatura (m)", "Peso (kg)", "Tipo de sangre"]
    let labelFields = ["Ej. José Emiliano", "Ej. Garza", "Ej. González", "Ej. 75", "Selecciona", "Ej. 1.70", "Ej. 80", "Selecciona"]
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
        DropdownOption(key: uniqueKey, value: "O+"),
        DropdownOption(key: uniqueKey, value: "O-")
    ]
    var body: some View {
        GeometryReader{ geo in
            Color("BackgroundColor")
                .ignoresSafeArea(.all)
            ZStack{
                VStack{
                    HStack{
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
                    VStack(alignment: .center, spacing: 10){
                        VStack(spacing: 20){
                            Text("Datos Personales")
                                .font(.system(size: 28, weight: .semibold))
                            TextFieldView(title: titleFields[0], label: labelFields[0], fieldContent: $nombre)
                                .frame(width: geo.size.width * 0.7, height: geo.size.height * 0.07)
                            TextFieldView(title: titleFields[1], label: labelFields[1], fieldContent: $apellidoPaterno)
                                .frame(width: geo.size.width * 0.7, height: geo.size.height * 0.07)
                            TextFieldView(title: titleFields[2], label: labelFields[2], fieldContent: $apellidoMaternto)
                                .frame(width: geo.size.width * 0.7, height: geo.size.height * 0.07)
                        }
                        HStack{
                            TextFieldView(title: titleFields[3], label: labelFields[3], fieldContent: $edad)
                                .frame(width: geo.size.width * 0.22, height: geo.size.height * 0.07)
                            Spacer()
                            SelectorView(title: titleFields[4], placeholder: "Seleccionar", options: FormularioDatosPersonalesView.optionsSexo)
                                .frame(width: geo.size.width * 0.40, height: geo.size.height * 0.07)
                        }
                        .frame(width: geo.size.width * 0.7, height: geo.size.height * 0.09)
                        HStack{
                            TextFieldView(title: titleFields[5], label: labelFields[5], fieldContent: $edad)
                                .frame(width: geo.size.width * 0.25, height: geo.size.height * 0.07)
                            Spacer()
                            TextFieldView(title: titleFields[6], label: labelFields[6], fieldContent: $edad)
                                .frame(width: geo.size.width * 0.25, height: geo.size.height * 0.07)
                        }
                        .frame(width: geo.size.width * 0.7, height: geo.size.height * 0.09)
                        HStack{
                            SelectorView(title: titleFields[7], placeholder: "Seleccionar", options: FormularioDatosPersonalesView.optionsTipoSangre)
                                .frame(width: geo.size.width * 0.40, height: geo.size.height * 0.07)
                                .padding(.trailing, 120)
                            Spacer()
                        }
                        .frame(width: geo.size.width * 0.7, height: geo.size.height * 0.09)
                    }
                    .padding(.bottom, 15)
                    .frame(width: geo.size.width * 0.85, height: geo.size.height * 0.7)
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color("CardColorFormularioDP"))
                    )
                    HStack(){
                        Spacer()
                        
                        Button {
                            currentPage = .formularioUbicacion
                        } label: {
                            Text("Siguiente")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.white)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color("ButtonColor"))
                                        .frame(width: geo.size.width * 0.35, height: geo.size.height * 0.08)
                                )
                        }
                        
                        
                    }
                    .frame(width: geo.size.width * 0.75, height: geo.size.height * 0.05)
                    .padding()
                }
            }
            .frame(width: geo.size.width * 1, height: geo.size.height * 1)
        }
    }
}

struct FormularioDatosPersonalesView_Previews: PreviewProvider {
    static var previews: some View {
        FormularioDatosPersonalesView()
    }
}
