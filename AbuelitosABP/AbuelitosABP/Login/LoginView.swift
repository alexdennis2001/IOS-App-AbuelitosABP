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
                        
                    }
                    .padding(.bottom, 10)
                    
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
            .previewDevice("iPhone 11")
    }
}
