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
    @State private var apellidoMaterno: String = ""
    @State private var fecha_nacimiento = Date()
    @State private var estatura: Double = 0.0
    @State private var peso: Double = 0.0
    @State private var selectedSex = 1
    @State private var selectedSangre = 9
    @State private var patientInfo = PatientInfoModel()
    
    
    var tiposSangre = ["A+","A-","B+","B-","AB+","AB-","O+","O-"]
    
    @AppStorage("Page") var currentPage: Page?
    
    let azulCaja = UIColor(red: 0.62, green: 0.74, blue: 0.89, alpha: 1.00)
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()
    
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
                        HStack{
                            Text("Nombre")
                                .font(.system(size: 18, weight: .regular))
                            Text("*")
                                .foregroundColor(.red)
                                .font(.system(size: 22, weight: .semibold))
                        }
                        TextField("Ej. José Emiliano", text: $nombre)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    Group{
                        HStack{
                            Text("Apellido Paterno")
                                .font(.system(size: 18, weight: .regular))
                            Text("*")
                                .foregroundColor(.red)
                                .font(.system(size: 22, weight: .semibold))
                        }
                        TextField("Ej. Garza", text: $apellidoPaterno)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    Group{
                        HStack{
                            Text("Apellido Materno")
                                .font(.system(size: 18, weight: .regular))
                            Text("*")
                                .foregroundColor(.red)
                                .font(.system(size: 22, weight: .semibold))
                        }
                        TextField("Ej. González", text: $apellidoMaterno)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    HStack{
                        VStack{
                            Group{
                                HStack{
                                    Text("Fecha de Nacimiento")
                                        .font(.system(size: 18, weight: .regular))
                                        .frame(width: 170, height: 40)
                                    Text("*")
                                        .foregroundColor(.red)
                                        .font(.system(size: 22, weight: .semibold))
                                        .frame(width: 10)
                                }
                                DatePicker(selection: $fecha_nacimiento, in: ...Date(), displayedComponents: .date){
                                    Text("")
                                }
                                .offset(x: -25, y: -5)
                            }
                        }
                        
                        VStack{
                            Group{
                                HStack{
                                    Text("Sexo")
                                        .font(.system(size: 18, weight: .regular))
                                    Text("*")
                                        .foregroundColor(.red)
                                        .font(.system(size: 22, weight: .semibold))
                                }
                                Picker("Sexo", selection: $selectedSex, content: {
                                    Text("Hombre").tag(1)
                                    Text("Mujer").tag(2)
                                })
                                .pickerStyle(.segmented)
                            }
                        }
                    }
                    
                    HStack{
                        VStack{
                            Group{
                                HStack{
                                    Text("Estatura (m)")
                                        .font(.system(size: 18, weight: .regular))
                                    Text("*")
                                        .foregroundColor(.red)
                                        .font(.system(size: 22, weight: .semibold))
                                }
                                TextField("Ej. 1.70", value: $estatura, formatter: formatter)
                                    .textFieldStyle(.roundedBorder)
                            }
                        }
                        
                        VStack{
                            Group{
                                HStack{
                                    Text("Peso (kg)")
                                        .font(.system(size: 18, weight: .regular))
                                    Text("*")
                                        .foregroundColor(.red)
                                        .font(.system(size: 22, weight: .semibold))
                                }
                                TextField("Ej. 80", value: $peso, formatter: formatter)
                                    .textFieldStyle(.roundedBorder)
                            }
                        }
                    }
                    
                    Group {
                        HStack{
                            Text("Tipo de sangre")
                                .font(.system(size: 18, weight: .regular))
                            Text("*")
                                .foregroundColor(.red)
                                .font(.system(size: 22, weight: .semibold))
                        }
                        
                        Menu{
                            Picker("Seleccionar", selection: $selectedSangre) {
                                Text("O-").tag(7)
                                Text("O+").tag(6)
                                Text("AB-").tag(5)
                                Text("AB+").tag(4)
                                Text("B-").tag(3)
                                Text("B+").tag(2)
                                Text("A-").tag(1)
                                Text("A+").tag(0)
                            }
                        } label: {
                            if selectedSangre == 9 {
                                Text("Seleccionar")
                            } else {
                                Text("\(tiposSangre[selectedSangre])")
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
                        patientInfo.postMethod(first_name: nombre, last_name: apellidoPaterno, second_last_name: apellidoMaterno, gender: selectedSex, birth_date: dateFormatter.string(from: fecha_nacimiento), height: estatura, weight: peso, blood_type: selectedSangre)
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
