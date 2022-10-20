//
//  CambiarFormularioView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 05/10/22.
//

import SwiftUI

struct CambiarFormularioView: View {
    
    @State private var estado: String = UserDefaults.standard.string(forKey: "estado") ?? "string"
    @State private var municipio: String = UserDefaults.standard.string(forKey: "municipio") ?? "string"
    @State private var zona: String = UserDefaults.standard.string(forKey: "zona") ?? "string"
    @State private var decanato: String = UserDefaults.standard.string(forKey: "decanato") ?? "string"
    @State private var parroquia: String = UserDefaults.standard.string(forKey: "parroquia") ?? "string"
    @State private var direccion: String = UserDefaults.standard.string(forKey: "direccion") ?? "string"
    
    var body: some View {
        ZStack(alignment: .top){
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Datos del Formulario")
                    .font(.system(size: 28, weight: .semibold))
                    .padding(.bottom, 35)
                VStack{
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
                            TextField("Parroquia/Capilla", text: $parroquia)
                                .font(.system(size: 20, weight: .light))
                                
                        }
                        Divider()
                            .padding(.bottom, 20)
                    }
                    
                    Group{
                        HStack(alignment: .top){
                            Text("Dirección")
                                .font(.system(size: 20, weight: .semibold))
                            TextField("Dirección", text: $direccion)
                                .font(.system(size: 20, weight: .light))
                            
                        }
                        Divider()
                            .padding(.bottom, 20)
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .frame(width: 380, height: 440)
                        .shadow(color: .black, radius: 5)
                    
                )
                
                
                
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
