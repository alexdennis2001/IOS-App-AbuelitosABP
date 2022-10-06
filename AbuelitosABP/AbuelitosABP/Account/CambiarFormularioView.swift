//
//  CambiarFormularioView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 05/10/22.
//

import SwiftUI

struct CambiarFormularioView: View {
    
    @State private var estado: String = ""
    @State private var municipio: String = ""
    @State private var zona: String = ""
    @State private var decanato: String = ""
    @State private var parroquia: String = ""
    @State private var direccion: String = ""
    
    var body: some View {
        ZStack(alignment: .top){
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Datos del Formulario")
                    .font(.system(size: 28, weight: .semibold))
                    .padding(.bottom, 25)
                
                Group{
                    HStack(alignment: .top){
                        Text("Estado")
                            .font(.system(size: 20, weight: .semibold))
                        
                        TextField("Estado", text: $estado)
                            .font(.system(size: 20, weight: .light))
                    }
                    
                    Divider()
                        .padding(.bottom, 20)
                }
                
                Group{
                    HStack(alignment: .top){
                        Text("Municipio")
                            .font(.system(size: 19, weight: .semibold))
                        
                        TextField("Municipio", text: $municipio)
                            .font(.system(size: 20, weight: .light))
                    }
                    
                    Divider()
                        .padding(.bottom, 20)
                }
                
                Group{
                    HStack(alignment: .top){
                        Text("Zona")
                            .font(.system(size: 19, weight: .semibold))
                        
                        TextField("Zona", text: $zona)
                            .font(.system(size: 20, weight: .light))
                    }
                    
                    Divider()
                        .padding(.bottom, 20)
                }
                
                Group{
                    HStack(alignment: .top){
                        Text("Decanato")
                            .font(.system(size: 20, weight: .semibold))
                        
                        TextField("Decanato", text: $decanato)
                            .font(.system(size: 20, weight: .light))
                    }
                    
                    Divider()
                        .padding(.bottom, 20)
                }
                
                
                Group{
                    HStack(alignment: .top){
                        Text("Parroquia/Capilla")
                            .font(.system(size: 20, weight: .semibold))
                        SecureField("Parroquia/Capilla", text: $parroquia)
                            .font(.system(size: 20, weight: .light))
                        
                    }
                    Divider()
                        .padding(.bottom, 20)
                }
                
                Group{
                    HStack(alignment: .top){
                        Text("Dirección")
                            .font(.system(size: 20, weight: .semibold))
                        SecureField("Dirección", text: $direccion)
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

struct CambiarFormularioView_Previews: PreviewProvider {
    static var previews: some View {
        CambiarFormularioView()
    }
}
