//
//  FormularioDatosPersonalView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 15/10/22.
//

import SwiftUI

struct FormularioDatosPersonalView: View {
    @State private var nombre: String = ""
    @State private var apellidoPaterno: String = ""
    @State private var apellidoMaternto: String = ""
    @State private var edad: String = ""
    @State private var estatura: String = ""
    @State private var peso: String = ""
    @State private var sexo: String = "Hombre"
    @State private var sangre: String = ""
    
    var sexos = ["Hombre", "Mujer"]
    var tiposSangre = ["O-","O+","AB-","AB+","B-","B+","A-","A+"]
    
    @AppStorage("Page") var currentPage: Page?
    
    let azulCaja = UIColor(red: 0.62, green: 0.74, blue: 0.89, alpha: 1.00)
    
    var body: some View {
        ZStack(alignment: .top){
            Color("BackgroundColor")
                .ignoresSafeArea(.all)
            
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("Formulario")
                            .font(.system(size: 50, weight: .semibold))
                            .padding(.bottom, 5)
                        Text("Llena el siguiente formulario")
                            .font(.system(size: 20, weight: .medium))
                    }
                    Image("logo_formulario")
                        .resizable()
                        .scaledToFit()
                        .frame(width:120,height: 120)
                    
                }
                
                VStack(alignment: .leading){
                    Text("Datos Personales")
                        .font(.system(size: 32, weight: .semibold))
                        .padding(.bottom, 10)
                    
                    Group{
                        Text("Nombre")
                        TextField("Ej. José Emiliano", text: $nombre)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    Group{
                        Text("Apellido Paterno")
                        TextField("Ej. Garza", text: $apellidoPaterno)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    Group{
                        Text("Apellido Materno")
                        TextField("Ej. González", text: $apellidoMaternto)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    HStack{
                        VStack{
                            Group{
                                Text("Edad")
                                TextField("Ej. 75", text: $edad)
                                    .textFieldStyle(.roundedBorder)
                            }
                        }
                        
                        VStack{
                            Group{
                                Text("Sexo")
                                Picker("Sexo", selection: $sexo) {
                                    ForEach(sexos, id: \.self) {
                                        Text($0)
                                    }
                                }
                                .pickerStyle(.segmented)
                            }
                        }
                    }
                    
                    HStack{
                        VStack{
                            Group{
                                Text("Estatura (m)")
                                TextField("Ej. 1.70", text: $estatura)
                                    .textFieldStyle(.roundedBorder)
                            }
                        }
                        
                        VStack{
                            Group{
                                Text("Peso (kg)")
                                TextField("Ej. 80", text: $peso)
                                    .textFieldStyle(.roundedBorder)
                            }
                        }
                    }
                    
                    Group {
                        Text("Tipo de sangre")
                        
                        Menu{
                            Picker("Seleccionar", selection: $sangre) {
                                ForEach(tiposSangre, id: \.self) {
                                    Text($0)
                                }
                            }
                        } label: {
                            if sangre == "" {
                                Text("Seleccionar")
                            } else {
                                Text("\(sangre)")
                            }
                        }
                        .padding(.horizontal)
                        .cornerRadius(5)
                        .frame(width: 350, height: 30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.white, lineWidth: 1)
                        )
                        .background(.white)
                        .accentColor(.black)
                    }
                    
                    
                }
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color(azulCaja))
                        .frame(width: 380, height: 600)
                )
                .frame(width: 350, height: 600)
                
                HStack(){
                    Button {
                        currentPage = .login
                    } label: {
                        Text("Atras")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("ButtonColor"))
                                    .frame(width: 150, height: 60)
                            )
                    }
                    .padding()
                    
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
                                    .frame(width: 150, height: 60)
                            )
                    }
                    
                    
                }
                .frame(width: 320)
                .padding()
                
            }
        }
    }
}

struct FormularioDatosPersonalView_Previews: PreviewProvider {
    static var previews: some View {
        FormularioDatosPersonalView()
    }
}
