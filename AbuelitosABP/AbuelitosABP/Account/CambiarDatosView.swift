//
//  CambiarDatosView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 29/09/22.
//

import SwiftUI

struct CambiarDatosView: View {
    @State private var nombre: String = ""
    @State private var apellidoP: String = ""
    @State private var apellidoM: String = ""
    @State private var cel: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack(alignment: .top){
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Datos de la cuenta")
                    .font(.system(size: 28, weight: .semibold))
                    .padding(.bottom, 25)
                
                Group{
                    HStack(alignment: .top){
                        Text("Nombre")
                            .font(.system(size: 20, weight: .semibold))
                        
                        TextField("Nombre", text: $nombre)
                            .font(.system(size: 20, weight: .light))
                    }
                    
                    Divider()
                        .padding(.bottom, 20)
                }
                
                Group{
                    HStack(alignment: .top){
                        Text("Apellido Paterno")
                            .font(.system(size: 19, weight: .semibold))
                        
                        TextField("Apellido Paterno", text: $apellidoP)
                            .font(.system(size: 20, weight: .light))
                    }
                    
                    Divider()
                        .padding(.bottom, 20)
                }
                
                Group{
                    HStack(alignment: .top){
                        Text("Apellido Materno")
                            .font(.system(size: 19, weight: .semibold))
                        
                        TextField("Apellido Materno", text: $apellidoM)
                            .font(.system(size: 20, weight: .light))
                    }
                    
                    Divider()
                        .padding(.bottom, 20)
                }
                
                Group{
                    HStack(alignment: .top){
                        Text("Télefono")
                            .font(.system(size: 20, weight: .semibold))
                        
                        TextField("Teléfono Celular", text: $cel)
                            .font(.system(size: 20, weight: .light))
                    }
                    
                    Divider()
                        .padding(.bottom, 20)
                }
                
                
                Group{
                    HStack(alignment: .top){
                        Text("Contraseña")
                            .font(.system(size: 20, weight: .semibold))
                        SecureField("Contraseña", text: $password)
                            .font(.system(size: 20, weight: .light))
                        
                    }
                    Divider()
                        .padding(.bottom, 20)
                }
                
            }
            .frame(width: 350)
            
            
        }
    }
}

struct CambiarDatosView_Previews: PreviewProvider {
    static var previews: some View {
        CambiarDatosView()
    }
}
