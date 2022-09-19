//
//  AccountVIew.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 12/09/22.
//

import SwiftUI

struct AccountView: View {
    let azulAbuelos = UIColor(red: 0.85, green: 0.93, blue: 0.94, alpha: 1.00)
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(azulAbuelos)
                .ignoresSafeArea()
            VStack{
                Capsule()
                    .fill(.white)
                    .frame(width: 230, height: 400)
                
                    .overlay(
                        Image("User")
                            .scaledToFit()
                            .offset(x: 0, y: 100)
                    )
                    .offset(x: 0, y: -100)
                    .frame(height: 200)
                
                
                VStack(alignment: .leading, spacing: 5){
                    Group{
                        Text("Alberto Gonzalez")
                            .font(.system(size: 34, weight: .bold))
                        Text("Edad:")
                            .font(.system(size: 20, weight: .medium))
                        Text("Ubicación:")
                            .font(.system(size: 20, weight: .medium))
                        Text("Parroquia:")
                            .font(.system(size: 20, weight: .medium))
                    }
                    
                }
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .frame(width: 350, height: 200)
                )
                .frame(width: 350, height: 100)
                .padding(.top, 60)
                .padding(.bottom, 50)
                
                
                Spacer()
                
                VStack(){
                    Button {
                        
                    } label: {
                        
                        HStack{
                            Text("Cambiar Teléfono Celular")
                            Image(systemName: "greaterthan").font(.system(size: 30, weight: .ultraLight))
                                .offset(x: 20, y: 0)
                            
                        }
                        .foregroundColor(.black)
                        .background(
                            Capsule()
                                .fill(.white)
                                .frame(width: 350, height: 100)
                        )
                    }
                    .padding(.bottom, 90)
                    
                    Button {
                        
                    } label: {
                        
                        HStack{
                            Text("Cambiar Contraseña")
                                .offset(x: -17)
                            Image(systemName: "greaterthan").font(.system(size: 30, weight: .ultraLight))
                                .offset(x: 38, y: 0)
                            
                        }
                        .foregroundColor(.black)
                        .background(
                            Capsule()
                                .fill(.white)
                                .frame(width: 350, height: 100)
                        )
                    }
                    .padding(.bottom, 90)
                    
                    Button {
                        
                    } label: {
                        
                        HStack{
                            Text("Editar Formulario")
                                .offset(x: -28)
                            Image(systemName: "greaterthan").font(.system(size: 30, weight: .ultraLight))
                                .offset(x: 51, y: 0)
                            
                        }
                        .foregroundColor(.black)
                        .background(
                            Capsule()
                                .fill(.white)
                                .frame(width: 350, height: 100)
                        )
                    }
                    
                }
                .frame(width: 350, height: 380)
                .offset(y: -10)
                
                
                
                
            }
            
            
            
            
            
            
            
            
            
            
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
