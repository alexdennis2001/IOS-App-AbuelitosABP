//
//  RecuperarContrasenaView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 10/09/22.
//

import SwiftUI

struct RecuperarContrasenaView: View {
    let azulAbuelos = UIColor(red: 0.85, green: 0.93, blue: 0.94, alpha: 1.00)
    @State private var cel: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(azulAbuelos)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("logo_casa_vida")
                        .scaledToFit()
                        .padding(.bottom, 80)
                    
                        .overlay(
                            VStack(alignment: .leading){
                                Spacer()
                                Text("Recupera tu contraseña").font(.system(size: 30, weight: .bold))
                                    .padding(.bottom, 1)
                                Text("Introduce tu correo electrónico o celular para recuperar tu cuenta").font(.system(size: 16, weight: .medium))
                                    
                            }
                                .frame(width: 400)
                                .offset(x: -10, y: 0)
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
                        
                        
                    }
                    .padding(.bottom, 10)
                    
                    VStack{
                        Button{
                            
                        } label: {
                            Text("Recuperar Contraseña")
                                .bold()
                                .foregroundColor(.white)
                                .background(.black)
                                .frame(maxWidth: 320)
                            
                        }.padding()
                            .background(Color.black)
                            .cornerRadius(10)
                        
                            
                        
                    }
                    .padding(.top, 30)
                    
                }.padding(.bottom, 400)
                
                
            }
        }
    }
}

struct RecuperarContrasenaView_Previews: PreviewProvider {
    static var previews: some View {
        RecuperarContrasenaView()
    }
}
