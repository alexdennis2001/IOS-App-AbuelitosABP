//
//  HomeView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 08/09/22.
//

import SwiftUI

struct LoginView: View {
    @State private var cel: String = ""
    @State private var password: String = ""
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
                                Text("Bienvenido!").font(.system(size: 34, weight: .bold))
                                    .padding(.bottom, 1)
                                Text("Inicia sesión para continuar").font(.system(size: 16, weight: .medium))
                                
                            }
                                .offset(x: -70, y: 0)
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
                            if showPassword {
                                TextField("Contraseña",
                                          text: $password)
                            } else {
                                SecureField("Contraseña",
                                            text: $password)
                            }
                            Button(action: { self.showPassword.toggle()}) {
                                Image(systemName: "eye")
                                    .foregroundColor(.secondary)
                            }
                        }   .padding()
                            .background(Capsule().fill(Color.white))
                            .shadow(radius: 5)
                        
                    }
                    .padding(.bottom, 10)
                    .frame(width: 350)
                    
                    HStack{
                        
                        NavigationLink(destination: RegistroView()){
                            Text("Crear Cuenta")
                                .bold()
                        }
                        .navigationTitle("")
                        
                        NavigationLink(destination: RecuperarContrasenaView()){
                            Text("Olvide mi contraseña")
                                .foregroundColor(.gray)
                                .bold()
                        }
                        .navigationTitle("")
                        
                    }
                    
                    VStack{
                        Button {
                            currentPage = .menu
                        } label: {
                            Text("Iniciar Sesión")
                                .bold()
                                .foregroundColor(.white)
                                .background(.black)
                                .frame(maxWidth: 320)
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        
                        
                    }
                    .padding(.top, 30)
                    
                    
                }.padding(.bottom, 200)
                
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .previewDevice("iPod touch (7th generation)")
    }
}
