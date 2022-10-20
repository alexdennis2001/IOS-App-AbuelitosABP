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
    @AppStorage("Page") var currentPage: Page?
    @ObservedObject var pruebaModel: PruebaModel
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .center) {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                VStack(alignment: .leading){
                    Image("logo_abuelitos")
                        .scaledToFit()
                        .padding(.bottom, 5)
                        .offset(x: 10,y: 7)
                    
                    HStack{
                        Text("Pruebas de Tamizaje")
                            .font(.system(size: 28, weight: .semibold))
                            .padding(.bottom, 5)
                        Button {
                            currentPage = .resultados
                        } label: {
                            
                            ZStack{
                                Text("Resultados")
                                    .font(.system(size: 16, weight: .semibold))
                                
                            }
                            .padding()
                            .foregroundColor(.black)
                            .background(
                                Capsule()
                                    .fill(Color("VerdePrueba"))
                                    .frame(width: 100, height: 40)
                            )
                        }
                    }
                    
                    
                    
                    ScrollView(showsIndicators: false) {
                        
//                        VStack(alignment: .leading, spacing: 20) {
//                            Text("Cognitiva")
//                                .font(.system(size: 26, weight: .semibold))
//                            NavigationLink(destination: PruebaView(prueba: pruebaModel.pruebas[0])) {
//                                Text("TIMED UP AND GO")
//                                    .card(backgroundColor: Color("VerdePrueba"))
//                            }
//
//                            NavigationLink(destination: PruebaView(prueba: pruebaModel.pruebas[1])) {
//                                Text("MINI MENTAL STATE EXAMINATION DE FOLSTEIN")
//                                    .card(backgroundColor: Color("AmarilloPrueba"))
//                            }
//                        }
//                        .frame(width: 380, height: 300)
//                        .background(
//                            RoundedRectangle(cornerRadius: 40)
//                                .fill(.white)
//                        )
//                        .padding(.bottom, 5)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Funcionalidad")
                                .font(.system(size: 26, weight: .semibold))
                            NavigationLink(destination: PruebaView(prueba: pruebaModel.pruebas[0])) {
                                Text("ÍNDICE DE KATZ")
                                    .card(backgroundColor: Color("RojoPrueba"))
                            }

                            NavigationLink(destination: PruebaView(prueba: pruebaModel.pruebas[1])) {
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
                            NavigationLink(destination: PruebaView(prueba: pruebaModel.pruebas[2])) {
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
                            NavigationLink(destination: PruebaView(prueba: pruebaModel.pruebas[3])) {
                                Text("ESCALA SARC-F")
                                    .card(backgroundColor: Color("RojoPrueba"))
                            }
                            

//                            NavigationLink(destination: PruebaView()) {
//                                Text("SHORT PHYSICAL PERFORMANCE BATTERY (SPPB)")
//                                    .card(backgroundColor: Color("AmarilloPrueba"))
//                            }

                            NavigationLink(destination: PruebaView(prueba: pruebaModel.pruebas[4])) {
                                Text("CUESTIONARIO FRAIL PARA DETECCIÓN DE FRAGILIDAD")
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
                            Text("Riesgo Social")
                                .font(.system(size: 26, weight: .semibold))
                            NavigationLink(destination: PruebaView(prueba: pruebaModel.pruebas[5])) {
                                Text("ESCALA DE VALORACIÓN SOCIOFAMILIAR DE GIJÓN")
                                    .card(backgroundColor: Color("AmarilloPrueba"))
                            }
                        }
                        .frame(width: 380, height: 200)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(.white)
                        )
                        .padding(.bottom, 25)
                        
                    }
                    .frame(width: 380, height: 670)
                
                }.offset(x: 0, y: -50)
    
                
            }
            
        }
    }
}

struct PruebasView_Previews: PreviewProvider {
    static var previews: some View {
        PruebasView(pruebaModel: PruebaModel())
    }
}
