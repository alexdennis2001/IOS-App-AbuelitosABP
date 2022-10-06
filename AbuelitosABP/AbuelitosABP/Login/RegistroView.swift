//
//  Registro.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 09/09/22.
//

import SwiftUI

struct RegistroView: View {
    @State private var cel: String = ""
    @State private var password: String = ""
    @State private var confPassword: String = ""
    
    @AppStorage("Page") var currentPage: Page?
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BackgroundColor")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("logo_casa_vida")
                        .scaledToFit()
                        .padding(.bottom, 80)
                    
                        .overlay(
                            VStack(alignment: .leading){
                                Spacer()
                                Text("Crea tu cuenta!").font(.system(size: 34, weight: .bold))
                                    .padding(.bottom, 1)
                                Text("Registrate para continuar").font(.system(size: 16, weight: .medium))
                                    
                            }
                                .frame(width: 250)
                                .offset(x: -50, y: 0)
                        )
                    VStack(alignment: .leading){
                        Group{
                        Text("Teléfono Celular")
                            .padding(.top, 20)
                        TextField("Teléfono Celular", text: $cel)
                                        .frame(width: 350)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .shadow(radius: 5)
                                        
                        }
                        
                        Group{
                        Text("Contraseña")
                            
                        SecureField("Contraseña", text: $password)
                                        .frame(width: 350)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .shadow(radius: 5)
                        }
                        
                        Group{
                        Text("Confirmar Contraseña")
                            
                        SecureField("Contraseña", text: $confPassword)
                                        .frame(width: 350)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .shadow(radius: 5)
                        }
                        
                    }
                    .padding(.bottom, 10)
                    
                    VStack{
                        Button{
                            currentPage = .formularioPersonal
                        } label: {
                            Text("Crear Cuenta")
                                .bold()
                                .foregroundColor(.white)
                                .background(.black)
                                .frame(maxWidth: 320)
                            
                        }.padding()
                            .background(Color.black)
                            .cornerRadius(10)
                        
                            
                        
                    }
                    .padding(.top, 30)
                    
                }.padding(.bottom, 250)
                
                
            }
        }
    }
}

struct RegistroView_Previews: PreviewProvider {
    static var previews: some View {
        RegistroView()
    }
}

