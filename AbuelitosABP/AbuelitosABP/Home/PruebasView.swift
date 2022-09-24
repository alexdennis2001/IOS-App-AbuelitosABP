//
//  PruebasView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 12/09/22.
//

import SwiftUI

struct PruebasView: View {
    let azulAbuelos = UIColor(red: 0.85, green: 0.93, blue: 0.94, alpha: 1.00)
    let rojoPrueba = UIColor(red: 0.97, green: 0.61, blue: 0.63, alpha: 1.00)
    let verdePrueba = UIColor(red: 0.43, green: 0.85, blue: 0.49, alpha: 1.00)
    let amarilloPrueba = UIColor(red: 0.99, green: 0.96, blue: 0.60, alpha: 1.00)
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .center) {
                Color(azulAbuelos)
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
                                    .foregroundColor(.black)
                                    .font(.system(size: 20, weight: .semibold))
                                    .frame(width: 320, height: 100)
                                    .background(Color(verdePrueba))
                                    .cornerRadius(30)
                            }
                            
                            NavigationLink(destination: PruebaView()) {
                                Text("MINI MENTAL STATE EXAMINATION DE FOLSTEIN")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20, weight: .semibold))
                                    .frame(width: 320, height: 100)
                                    .background(Color(amarilloPrueba))
                                    .cornerRadius(30)
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
                                    .foregroundColor(.black)
                                    .font(.system(size: 20, weight: .semibold))
                                    .frame(width: 320, height: 100)
                                    .background(Color(rojoPrueba))
                                    .cornerRadius(30)
                            }
                            
                            NavigationLink(destination: PruebaView()) {
                                Text("ÍNDICE DE LAWTON & BRODY")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20, weight: .semibold))
                                    .frame(width: 320, height: 100)
                                    .background(Color(amarilloPrueba))
                                    .cornerRadius(30)
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
                                    .foregroundColor(.black)
                                    .font(.system(size: 20, weight: .semibold))
                                    .frame(width: 320, height: 100)
                                    .background(Color(amarilloPrueba))
                                    .cornerRadius(30)
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
                                    .foregroundColor(.black)
                                    .font(.system(size: 20, weight: .semibold))
                                    .frame(width: 320, height: 100)
                                    .background(Color(rojoPrueba))
                                    .cornerRadius(30)
                            }
                            
                            NavigationLink(destination: PruebaView()) {
                                Text("SHORT PHYSICAL PERFORMANCE BATTERY (SPPB)")
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .semibold))
                                    .frame(width: 320, height: 100)
                                    .background(Color(amarilloPrueba))
                                    .cornerRadius(30)
                            }
                            
                            NavigationLink(destination: PruebaView()) {
                                Text("CUESTIONARIO FRAIL PARA DETECCIÓN DE FRAGILIDAD")
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .semibold))
                                    .frame(width: 320, height: 100)
                                    .background(Color(amarilloPrueba))
                                    .cornerRadius(30)
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
                                    .foregroundColor(.black)
                                    .font(.system(size: 20, weight: .semibold))
                                    .frame(width: 320, height: 100)
                                    .background(Color(amarilloPrueba))
                                    .cornerRadius(30)
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
