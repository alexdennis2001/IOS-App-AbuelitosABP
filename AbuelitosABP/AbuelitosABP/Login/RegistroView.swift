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
    @State private var showPassword = false
    
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
                        .padding(.bottom, 20)
                    
                    VStack(alignment: .leading,spacing: 20){
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.secondary)
                            TextField("Teléfono Celular",
                                      text: $cel)
                        }   .padding()
                            .background(Capsule().fill(Color.white))
                            .frame(width: 350)
                            .shadow(radius: 5)
                        
                        HStack {
                            Image(systemName: "lock")
                                .foregroundColor(.secondary)
                            SecureField("Contraseña",
                                        text: $password)
                        }   .padding()
                            .background(Capsule().fill(Color.white))
                            .shadow(radius: 5)
                        
                        HStack {
                            Image(systemName: "lock")
                                .foregroundColor(.secondary)
                            SecureField("Comprobar Contraseña",
                                        text: $confPassword)
                        }   .padding()
                            .background(Capsule().fill(Color.white))
                            .shadow(radius: 5)
                        
                        
                        
                    }
                    .frame(width: 350)
                    
                    VStack{
                        
                        if password != confPassword {
                            
                            Text("Las contraseñas no coinciden.")
                                .foregroundColor(.red)
                            
                            Button{
                                currentPage = .formularioPersonal
                            } label: {
                                Text("Crear Cuenta")
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(maxWidth: 320)
                                
                                
                            }
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                            .disabled(false)
                            .opacity(0.5)
                        }
                        else {
                            Button{
                                currentPage = .formularioPersonal
                            } label: {
                                Text("Crear Cuenta")
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(maxWidth: 320)
                                
                                
                            }
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                            .disabled(false)
                        }
                        
                        
                        
                        
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

