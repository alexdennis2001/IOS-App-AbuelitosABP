//
//  PruebasView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 12/09/22.
//

import SwiftUI

struct Card: ViewModifier{
    let backgroundColor: Color
    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
            .font(.system(size: 20, weight: .semibold))
            .frame(width: 320, height: 100)
            .background(backgroundColor)
            .cornerRadius(30)
    }
}

extension View {
    func card(backgroundColor: Color = Color("AmarilloPrueba")) -> some View {
        modifier(Card(backgroundColor: backgroundColor))
    }
}

struct PruebasView: View {
    var body: some View {
        NavigationView{
            ZStack(alignment: .center) {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                VStack(alignment: .leading){
                    Image("logo_abuelitos")
                        .scaledToFit()
                        .padding(.bottom, 5)
                        .offset(x: 10,y: 16)
                    
                    Text("Pruebas de Tamizaje")
                        .font(.system(size: 28, weight: .semibold))
                        .padding(.bottom, 5)
                    
                    
                    
                    ScrollView(showsIndicators: false) {
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Cognitiva")
                                .font(.system(size: 26, weight: .semibold))
                            NavigationLink(destination: PruebaView()) {
                                Text("TIMED UP AND GO")
                                    .card(backgroundColor: Color("VerdePrueba"))
                            }
                            
                            NavigationLink(destination: PruebaView()) {
                                Text("MINI MENTAL STATE EXAMINATION DE FOLSTEIN")
                                    .card(backgroundColor: Color("AmarilloPrueba"))
                            }
                        }
                        .frame(width: 380, height: 300)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(.white)
                        )
                        .padding(.bottom, 5)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Funcionalidad")
                                .font(.system(size: 26, weight: .semibold))
                            NavigationLink(destination: PruebaView()) {
                                Text("ÍNDICE DE KATZ")
                                    .card(backgroundColor: Color("RojoPrueba"))
                            }
                            
                            NavigationLink(destination: PruebaView()) {
                                Text("ÍNDICE DE LAWTON & BRODY")
                                    .card(backgroundColor: Color("AmarilloPrueba"))
                            }
                        }
                        .frame(width: 380, height: 300)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(.white)
                        )
                        .padding(.bottom, 5)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Afectivo - Calidad de Vida")
                                .font(.system(size: 26, weight: .semibold))
                            NavigationLink(destination: PruebaView()) {
                                Text("ESCALA ABREVIADA DE DEPRESIÓN GERIÁTRICA DE YESAVAGE")
                                    .card(backgroundColor: Color("AmarilloPrueba"))
                            }
                        }
                        .frame(width: 380, height: 200)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(.white)
                        )
                        .padding(.bottom, 5)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Desempeño Físico")
                                .font(.system(size: 26, weight: .semibold))
                            NavigationLink(destination: PruebaView()) {
                                Text("ESCALA SARC-F")
                                    .card(backgroundColor: Color("RojoPrueba"))
                            }
                            
                            NavigationLink(destination: PruebaView()) {
                                Text("SHORT PHYSICAL PERFORMANCE BATTERY (SPPB)")
                                    .card(backgroundColor: Color("AmarilloPrueba"))
                            }
                            
                            NavigationLink(destination: PruebaView()) {
                                Text("CUESTIONARIO FRAIL PARA DETECCIÓN DE FRAGILIDAD")
                                    .card(backgroundColor: Color("AmarilloPrueba"))
                            }
                        }
                        .frame(width: 380, height: 430)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(.white)
                        )
                        .padding(.bottom, 5)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Riesgo Social")
                                .font(.system(size: 26, weight: .semibold))
                            NavigationLink(destination: PruebaView()) {
                                Text("ESCALA DE VALORACIÓN SOCIOFAMILIAR DE GIJÓN")
                                    .card(backgroundColor: Color("AmarilloPrueba"))
                            }
                        }
                        .frame(width: 380, height: 200)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(.white)
                        )
                        .padding(.bottom, 5)
                        
                    }
                    .frame(width: 380, height: 650)
                
                }.offset(x: 0, y: -60)
    
                
            }
            
        }
    }
}

struct PruebasView_Previews: PreviewProvider {
    static var previews: some View {
        PruebasView()
    }
}
