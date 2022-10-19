//
//  ResultadosView.swift
//  AbuelitosABP
//
//  Created by Arturo on 19/10/22.
//

import SwiftUI

struct ResultadosView: View {
    @AppStorage("ScorePrueba1") var scorePrueba1: Double?
    @AppStorage("ScorePrueba2") var scorePrueba2: Double?
    @AppStorage("ScorePrueba3") var scorePrueba3: Double?
    @AppStorage("ScorePrueba4") var scorePrueba4: Double?
    @AppStorage("ScorePrueba5") var scorePrueba5: Double?
    @AppStorage("ScorePrueba6") var scorePrueba6: Double?
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea(.all)
            VStack(spacing: 20){
                Text("Resultados")
                    .font(.system(size: 34, weight: .bold))
                    .padding()
                HStack{
                    VStack(spacing: 40){
                        Group{
                            Text("ÍNDICE DE KATZ")
                                .font(.system(size: 16, weight: .bold))
                            Divider()
                                .frame(width: 275, height: 2)
                                .overlay(.black)
                            Text("ÍNDICE DE LAWTON & BRODY")
                                .font(.system(size: 16, weight: .bold))
                            Divider()
                                .frame(width: 275, height: 2)
                                .overlay(.black)
                            Text("ESCALA ABREVIADA DE YESAVAGE")
                                .font(.system(size: 16, weight: .bold))
                            Divider()
                                .frame(width: 275, height: 2)
                                .overlay(.black)
                        }
                        Group{
                            Text("ESCALA SARC-F")
                                .font(.system(size: 16, weight: .bold))
                            Divider()
                                .frame(width: 275, height: 2)
                                .overlay(.black)
                            Text("CUESTIONARIO FRAIL")
                                .font(.system(size: 16, weight: .bold))
                            Divider()
                                .frame(width: 275, height: 2)
                                .overlay(.black)
                            Text("VALORACIÓN SOCIOFAMILIAR DE GIJÓN")
                                .font(.system(size: 16, weight: .bold))
                        }
                    }
                    .frame(width: 275, height: 625)
                    Divider()
                        .frame(width: 2, height: 625)
                        .overlay(.black)
                    VStack(spacing: 40){
                        Group{
                            if scorePrueba1 != nil{
                                Text(String(format: "%.1f", scorePrueba1!))
                                    .font(.system(size: 16, weight: .bold))
                            }
                            else{
                                Text("NULL")
                                    .font(.system(size: 16, weight: .bold))
                            }
                            Divider()
                                .frame(width: 80, height: 2)
                                .overlay(.black)
                            if scorePrueba2 != nil{
                                Text(String(format: "%.1f", scorePrueba2!))
                                    .font(.system(size: 16, weight: .bold))
                            }
                            else{
                                Text("NULL")
                                    .font(.system(size: 16, weight: .bold))
                            }
                            Divider()
                                .frame(width: 80, height: 2)
                                .overlay(.black)
                            if scorePrueba3 != nil{
                                Text(String(format: "%.1f", scorePrueba3!))
                                    .font(.system(size: 16, weight: .bold))
                            }
                            else{
                                Text("NULL")
                                    .font(.system(size: 16, weight: .bold))
                            }
                            Divider()
                                .frame(width: 80, height: 2)
                                .overlay(.black)
                        }
                        Group{
                            if scorePrueba4 != nil{
                                Text(String(format: "%.1f", scorePrueba4!))
                                    .font(.system(size: 16, weight: .bold))
                            }
                            else{
                                Text("NULL")
                                    .font(.system(size: 16, weight: .bold))
                            }
                            Divider()
                                .frame(width: 80, height: 2)
                                .overlay(.black)
                            if scorePrueba5 != nil{
                                Text(String(format: "%.1f", scorePrueba5!))
                                    .font(.system(size: 16, weight: .bold))
                            }
                            else{
                                Text("NULL")
                                    .font(.system(size: 16, weight: .bold))
                            }
                            Divider()
                                .frame(width: 80, height: 2)
                                .overlay(.black)
                            if scorePrueba6 != nil{
                                Text(String(format: "%.1f", scorePrueba6!))
                                    .font(.system(size: 16, weight: .bold))
                            }
                            else{
                                Text("NULL")
                                    .font(.system(size: 16, weight: .bold))
                            }
                        }
                    }
                    .padding(.bottom, 20)
                    .frame(height: 625)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .frame(width: 380, height: 625)
                        .shadow(color: .black, radius: 5)
                )
            }
            .padding(.bottom, 100)
        }
    }
}

struct ResultadosView_Previews: PreviewProvider {
    static var previews: some View {
        ResultadosView()
    }
}
