//
//  AfectividadView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 10/10/22.
//

import SwiftUI

struct AfectividadView: View {
    
    @State private var isAnimated = false
    var animation: Animation {
        Animation.linear
    }
    
    var body: some View {
        
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack{
                Text("Empieza tu actividad!")
                    .font(.system(size: 28, weight: .semibold))
                    .padding(.bottom, 10)
                
                VStack{
                    Text("Actividad:")
                        .font(.system(size: 24, weight: .medium))
                        .padding(.top, 10)
                    
                    Text("Trabajaras tu creatividad. Da clic en empezar, agarra el lapíz y deja que tu imaginación vuelve. \n No olvides compartir tu dibujo!")
                        .font(.system(size: 20, weight: .light))
                        .frame(width: 320, height: 100,alignment: .top)
                        .multilineTextAlignment(.center)
                }
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .frame(width: 350, height: 170)
                )
                .frame(width: 350, height: 150)
                
                VStack{
                    Image("drawing")
                        .resizable()
                        .frame(width: 400, height: 400)
                        
                       
                    
                    NavigationLink(destination: DrawingActView()) {
                        Text("Empezar")
                            .padding()
                            .background(
                                Capsule()
                                    .frame(width: 150)
                                    .foregroundColor(Color("azulClaroButton"))
                            )
                            .foregroundColor(.black)
                            .tint(.white)
                            .font(.system(size: 24, weight: .medium))
                    }
                    
                }
                
            }.offset(y: -50)
            
        }
    }
    
}

struct AfectividadView_Previews: PreviewProvider {
    static var previews: some View {
        AfectividadView()
    }
}
