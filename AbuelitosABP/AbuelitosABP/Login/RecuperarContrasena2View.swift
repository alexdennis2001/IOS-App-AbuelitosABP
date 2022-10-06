//
//  RecuperarContrasena2View.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 05/10/22.
//

import SwiftUI

struct RecuperarContrasena2View: View {
    
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
                                Text("Recupera tu contraseña").font(.system(size: 30, weight: .bold))
                                    .padding(.bottom, 1)
                                Text("Se envío un mensaje de texto a su telefono celular. Favor de seguir los pasos para recuperar su contraseña.").font(.system(size: 16, weight: .medium))
                                    
                            }
                                .frame(width: 400)
                                .offset(x: -10, y: 0)
                        )
                    
                    VStack{
                        Button{
                            currentPage = .login
                        } label: {
                            Text("Continuar")
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

struct RecuperarContrasena2View_Previews: PreviewProvider {
    static var previews: some View {
        RecuperarContrasena2View()
    }
}
