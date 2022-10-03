//
//  HomeView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 11/09/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                VStack(alignment: .leading){
                    
                    VStack(alignment: .leading){
                        Image("logo_abuelitos")
                            .scaledToFit()
                            .padding(.bottom, 0)
                        Text("Bienvenido, NOMBRE!")
                            .font(.system(size: 24, weight: .medium))
                            .padding(.bottom, 1)
                    }
                    .padding(.leading,20)
                    
                    ScrollView(showsIndicators: false) {
                        VStack(alignment: .leading){
                            Text("Realiza tu actividad del día")
                                .font(.system(size: 28, weight: .semibold))
                                .padding(.leading,20)
                            
                            NavigationLink(destination: ActFisicaView()){
                                Image("desert")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 400, height: 180)
                                    .cornerRadius(40)
                                    .opacity(0.80)
                                    .overlay(
                                        VStack(alignment: .leading){
                                            Text("Fisico")
                                                .font(.system(size: 50, weight: .semibold))
                                                .padding(.bottom, 5)
                                            
                                            Group{
                                                Text("Caminar 20 minutos")
                                                    .font(.system(size: 30, weight: .semibold))
                                            }
                                            .background(
                                                LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .top, endPoint: .bottom)
                                                    .cornerRadius(5)
                                                    .opacity(0.40)
                                                    .frame(width: 360, height: 55)
                                                    .offset(x: 30, y:0)
                                                
                                            )
                                        }
                                            .foregroundColor(.white)
                                            .frame(width: 360, height: 150, alignment: .leading)
                                            .offset(x: 10, y:10)
                                        
                                    )
                            }
                            Text("Categorias")
                                .font(.system(size: 28, weight: .semibold))
                                .padding(.leading,20)
                            
                            VStack(spacing: 15){
                                NavigationLink(destination: ActFisicaView()){
                                    Image("running")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 400, height: 110)
                                        .cornerRadius(40)
                                        .opacity(0.80)
                                        .overlay(
                                            VStack(alignment: .leading){
                                                Text("Fisico")
                                                    .font(.system(size: 50, weight: .semibold))
                                                    .padding(.bottom, 5)
                                                
                                            }
                                                .foregroundColor(.white)
                                                .frame(width: 360, height: 110, alignment: .leading)
                                                .offset(x: 10, y:10)
                                            
                                        )
                                }
                                
                                NavigationLink(destination: ActCognitivaView()){
                                    Image("book")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 400, height: 110)
                                        .cornerRadius(40)
                                        .opacity(0.80)
                                        .overlay(
                                            VStack(alignment: .leading){
                                                Text("Cognitivo")
                                                    .font(.system(size: 50, weight: .semibold))
                                                    .padding(.bottom, 5)
                                                
                                            }
                                                .foregroundColor(.white)
                                                .frame(width: 360, height: 110, alignment: .leading)
                                                .offset(x: 10, y:10)
                                            
                                        )
                                    
                                }
                                
                                
                                
                                NavigationLink(destination: ActSocialView()){
                                    Image("socializing")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 400, height: 110)
                                        .cornerRadius(40)
                                        .opacity(0.65)
                                        .overlay(
                                            VStack(alignment: .leading){
                                                Text("Social")
                                                    .font(.system(size: 50, weight: .semibold))
                                                    .padding(.bottom, 5)
                                                
                                            }
                                                .foregroundColor(.white)
                                                .frame(width: 360, height: 110, alignment: .leading)
                                                .offset(x: 10, y:10)
                                            
                                        )
                                }
                                
                                NavigationLink(destination: ActSocialView()){
                                    Image("healthy")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 400, height: 110)
                                        .cornerRadius(40)
                                        .opacity(0.80)
                                        .overlay(
                                            VStack(alignment: .leading){
                                                Text("Estilo de vida")
                                                    .font(.system(size: 50, weight: .semibold))
                                                    .padding(.bottom, 5)
                                                
                                            }
                                                .foregroundColor(.white)
                                                .frame(width: 360, height: 110, alignment: .leading)
                                                .offset(x: 10, y:10)
                                            
                                        )
                                }
                                
                                NavigationLink(destination: ActSocialView()){
                                    Image("afectividad")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 400, height: 110)
                                        .cornerRadius(40)
                                        .opacity(0.60)
                                        .padding(.bottom, 5)
                                        .overlay(
                                            VStack(alignment: .leading){
                                                Text("Afectividad")
                                                    .font(.system(size: 50, weight: .semibold))
                                                    .padding(.bottom, 5)
                                                
                                            }
                                                .foregroundColor(.white)
                                                .frame(width: 360, height: 110, alignment: .leading)
                                                .offset(x: 10, y:10)
                                        )
                                }
                            }
                        }
                    }
                    .frame(height: 660)
                    
                }
                .padding(.bottom, 110)
                
            }
        }
        
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
