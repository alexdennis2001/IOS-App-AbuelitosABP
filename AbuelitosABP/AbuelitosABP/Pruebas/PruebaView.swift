//
//  PruebaView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 24/09/22.
//

import SwiftUI

struct PruebaView: View {
    let greyButton = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
    var prueba: Prueba
    
    var body: some View {
        ZStack(alignment: .top) {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack{
                Text("Prueba:")
                    .font(.system(size: 28, weight: .semibold))
                    .padding(.bottom, 1)
                
                Text(prueba.nombre)
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
                    Text(prueba.preg_resp[0].pregunta)
                        .font(.system(size: 24, weight: .medium))
                        .minimumScaleFactor(0.1)
                        .frame(width: 340, height: 80)
                        .multilineTextAlignment(.center)
                    

                    
                    ForEach(0 ..< prueba.preg_resp[0].respuesta.count, id: \.self){ respuesta in
                        Button {

                        } label: {
                            Text(prueba.preg_resp[0].respuesta[respuesta])
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
        PruebaView(prueba: Prueba(nombre: "ÍNDICE DE KATZ", preg_resp: [
            PregResp(pregunta: "¿Recibe ayuda para bañarse?", respuesta: ["No recibo ayuda","Recibo ayuda con una parte del cuerpo","Recibo ayuda con más de una parte del cuerpo","No me baño"]),
            PregResp(pregunta: "¿Recibe ayuda para vestirse?", respuesta: ["Me visto solo","Requiero ayuda para los zapatos","Recibo ayuda para la ropa","No me visto"]),
            PregResp(pregunta: "¿Recibe ayuda cuando va al sanitario?", respuesta: ["Voy solo y me arreglo","Recibo ayuda para ir y asearse","No voy al servicio"]),
            PregResp(pregunta: "¿Recibe ayuda para levantarse?", respuesta: ["Me levanto y me acuesto solo","Necesita ayuda","No puedo salir de cama"]),
            PregResp(pregunta: "¿Recibe ayuda para comer?", respuesta: ["Como solo con cubiertos","Requiero ayuda","Requiero ayuda total","Sonda"]),
            PregResp(pregunta: "¿Realiza continencias?", respuesta: ["Contiene todo el día y noche","Incontinencia ocasional nocturna","Incontinencia permanente"])]))
    }
}
