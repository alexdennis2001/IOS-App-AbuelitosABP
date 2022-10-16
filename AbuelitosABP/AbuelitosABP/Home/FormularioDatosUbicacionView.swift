//
//  FormularioDatosUbicacionView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 15/10/22.
//

import SwiftUI

struct FormularioDatosUbicacionView: View {
    @State private var estado: String = ""
    @State private var municipio: String = ""
    @State private var zona: String = ""
    @State private var decanato: String = ""
    @State private var parroquia: String = ""
    @State private var direccion: String = ""
    
    var listaEstados = ["Aguascalientes","Baja California","Baja California Sur","Campeche","Ciudad de México", "Nuevo León","Oaxaca","Puebla","Sinaloa","Sonora"]
    
    var listaMunicipios = ["Abasolo","Agualeguas","Los Aldamas","Apodaca","Bustamante","Carmen","San Pedro Garza García","General Escobedo","Guadalupe","Juárez","Montemorelos","Monterrey","Hidalgo"]
    
    var listaZona = ["Zona Pastoral I","Zona Pastoral II","Zona Pastoral III","Zona Pastoral VI","Zona Pastoral VII"]
    
    var listaDecanato = ["Decanato Catedral","Decanato de la Purísima"]
    var listaParroquias = ["Casa de Religiosas Misioneras Servidoras de la Palabra","Parroquia Divina Providencia", "Parroquia Nuestra Madre Santísima de la Luz", "Parroquia Sagrado Corazón de Jesús", "Parroquia San Martín de Porres", "Basílica Nuestra Señora del Roble  Templo Dolores y Perpetuo Socorro", "Templo San Luis Gonzaga", "Catedral Metropolitana Nuestra Señora de Monterrey", "Hospital SAN VICENTE", "Casa de Religiosas Casa General Discípulas del Señor", "Casa de Religiosas Colegio Excelsior", "Casa de Religiosas Comunidad Pía Sociedad Hijas de San Pablo"]
    @AppStorage("Page") var currentPage: Page?
    
    var body: some View {
        
        ZStack(alignment: .top){
            
            Color("BackgroundColor")
                .ignoresSafeArea(.all)
            ScrollView{
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
                        Text("Ubicación")
                            .font(.system(size: 32, weight: .semibold))
                            .padding(.bottom, 20)
                        
                        
                        
                        Group {
                            HStack{
                                Text("Estado")
                                    .font(.system(size: 18, weight: .regular))
                                Text("*")
                                    .foregroundColor(.red)
                                    .font(.system(size: 22, weight: .semibold))
                            }
                            Menu{
                                Picker("Seleccionar", selection: $estado) {
                                    ForEach(listaEstados, id: \.self) {
                                        Text($0)
                                    }
                                }
                            } label: {
                                if estado == "" {
                                    Text("Seleccionar")
                                } else {
                                    Text("\(estado)")
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
                        
                        Group {
                            HStack{
                                Text("Municipio")
                                    .font(.system(size: 18, weight: .regular))
                                Text("*")
                                    .foregroundColor(.red)
                                    .font(.system(size: 22, weight: .semibold))
                            }
                            Menu{
                                Picker("Seleccionar", selection: $municipio) {
                                    ForEach(listaMunicipios, id: \.self) {
                                        Text($0)
                                    }
                                }
                            } label: {
                                if municipio == "" {
                                    Text("Seleccionar")
                                } else {
                                    Text("\(municipio)")
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
                        
                        Group {
                            HStack{
                                Text("Zona")
                                    .font(.system(size: 18, weight: .regular))
                                Text("*")
                                    .foregroundColor(.red)
                                    .font(.system(size: 22, weight: .semibold))
                            }
                            Menu{
                                Picker("Seleccionar", selection: $zona) {
                                    ForEach(listaZona, id: \.self) {
                                        Text($0)
                                    }
                                }
                            } label: {
                                if zona == "" {
                                    Text("Seleccionar")
                                } else {
                                    Text("\(zona)")
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
                        
                        Group {
                            HStack{
                                Text("Decanato")
                                    .font(.system(size: 18, weight: .regular))
                                Text("*")
                                    .foregroundColor(.red)
                                    .font(.system(size: 22, weight: .semibold))
                            }
                            Menu{
                                Picker("Seleccionar", selection: $decanato) {
                                    ForEach(listaDecanato, id: \.self) {
                                        Text($0)
                                    }
                                }
                            } label: {
                                if decanato == "" {
                                    Text("Seleccionar")
                                } else {
                                    Text("\(decanato)")
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
                        
                        Group {
                            HStack{
                                Text("Parroquia/Capilla")
                                    .font(.system(size: 18, weight: .regular))
                                Text("*")
                                    .foregroundColor(.red)
                                    .font(.system(size: 22, weight: .semibold))
                            }
                            Menu{
                                Picker("Seleccionar", selection: $parroquia) {
                                    ForEach(listaParroquias, id: \.self) {
                                        Text($0)
                                    }
                                }
                            } label: {
                                if parroquia == "" {
                                    Text("Seleccionar")
                                } else {
                                    Text("\(parroquia)")
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
                        
                        Group{
                            HStack{
                                Text("Dirección")
                                    .font(.system(size: 18, weight: .regular))
                                Text("*")
                                    .foregroundColor(.red)
                                    .font(.system(size: 22, weight: .semibold))
                            }
                            TextField("Ej. Calle, # de Casa y Colonia", text: $direccion)
                                .textFieldStyle(.roundedBorder)
                        }
                        
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color("AmarilloPrueba"))
                            .frame(width: 380, height: 600)
                    )
                    .frame(width: 350, height: 600)
                    
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
                                        .frame(width: 150, height: 60)
                                )
                        }
                        .padding(.leading, 20)
                        
                        Spacer()
                        
                        Button {
                            currentPage = .menu
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
}

struct FormularioDatosUbicacionView_Previews: PreviewProvider {
    static var previews: some View {
        FormularioDatosUbicacionView()
    }
}
