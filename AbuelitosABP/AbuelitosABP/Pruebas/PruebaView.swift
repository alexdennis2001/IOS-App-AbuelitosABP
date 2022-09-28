//
//  PruebaView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 24/09/22.
//

import SwiftUI

struct PruebaView: View {
    let azulAbuelos = UIColor(red: 0.85, green: 0.93, blue: 0.94, alpha: 1.00)
    
    let greyButton = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(azulAbuelos)
                .ignoresSafeArea()
            
            VStack{
                Text("Prueba:")
                    .font(.system(size: 28, weight: .semibold))
                    .padding(.bottom, 1)
                
                Text("ÍNDICE DE KATZ")
                    .font(.system(size: 20, weight: .medium))
                
                VStack{
                    Text("Instrucciones:")
                        .font(.system(size: 24, weight: .medium))
                    
                    
                    VStack(alignment: .leading){
                        Text("1. Conteste las siguientes preguntas.")
                            .padding(.bottom, 5)
                        
                        Text("2. Dar click en su respuesta hasta completar el cuestionario.")
                    }
                    .frame(width: 300, height: 80)
                    .multilineTextAlignment(.leading)
                }
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .frame(width: 350, height: 150)
                )
                .frame(width: 350, height: 150)
                .padding(.bottom, 10)
                
                
                VStack{
                    Text("¿Recibe ayuda para bañarse?")
                        .font(.system(size: 24, weight: .medium))
                    
                    Button {
                        
                    } label: {
                        Text("No recibo ayuda")
                            .font(.system(size: 24, weight: .medium))
                            .minimumScaleFactor(0.1)
                            .frame(width: 280, height: 70)
                            .foregroundColor(.black)
                        
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(greyButton))
                            .frame(width: 300, height: 80)
                            .opacity(0.5)
                    )
                    .frame(width: 300, height: 80)
                    
                    Button {
                        
                    } label: {
                        Text("Recibo ayuda con una parte del cuerpo")
                            .font(.system(size: 24, weight: .medium))
                            .minimumScaleFactor(0.1)
                            .frame(width: 280, height: 70)
                            .foregroundColor(.black)
                        
                        
                        
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(greyButton))
                            .frame(width: 300, height: 80)
                            .opacity(0.5)
                    )
                    .frame(width: 300, height: 80)
                    
                    
                    Button {
                        
                    } label: {
                        Text("Recibo ayuda con más de una parte del cuerpo")
                            .font(.system(size: 24, weight: .medium))
                            .minimumScaleFactor(0.1)
                            .frame(width: 280, height: 70)
                            .foregroundColor(.black)
                        
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(greyButton))
                            .frame(width: 300, height: 80)
                            .opacity(0.5)
                    )
                    .frame(width: 300, height: 80)
                    Button {
                        
                    } label: {
                        Text("No me baño")
                            .font(.system(size: 24, weight: .medium))
                            .minimumScaleFactor(0.1)
                            .frame(width: 280, height: 70)
                            .foregroundColor(.black)
                        
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(greyButton))
                            .frame(width: 300, height: 80)
                            .opacity(0.5)
                    )
                    .frame(width: 300, height: 80)
                }
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .frame(width: 350, height: 460)
                        .shadow(color: .black, radius: 5)
                    
                )
                .frame(width: 350, height: 460)
                
                
            }
            
            .padding(.bottom, 70)
            
        }
    }
}

struct PruebaView_Previews: PreviewProvider {
    static var previews: some View {
        PruebaView()
    }
}
