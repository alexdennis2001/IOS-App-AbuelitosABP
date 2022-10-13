//
//  ActCognitivaView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 23/09/22.
//

import SwiftUI

struct ActCognitivaView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        ZStack(alignment: .top) {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack{
                Text("Empieza tu actividad!")
                    .font(.system(size: 28, weight: .semibold))
                    .padding(.bottom, 20)
                
                VStack{
                    Text("Actividad:")
                        .font(.system(size: 24, weight: .medium))
                        .offset(y: 10)
                    
                    Text("Juega un juego de ajedrez contra algún familiar o conocido!")
                        .font(.system(size: 20, weight: .light))
                        .frame(width: 320, height: 100,alignment: .top)
                        .multilineTextAlignment(.center)
                }
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .frame(width: 350, height: 150)
                )
                .frame(width: 350, height: 150)
                .padding(.bottom, 20)
                
                Image("Chess")
                    .scaledToFit()
                    .onTapGesture() {
                        UIApplication.shared.open(URL(string: "https://apps.apple.com/mx/app/chess-play-learn/id329218549?l=en")!)
                    }
                    
                    
                Text("Chess")
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.white)
                            .frame(width: 75, height: 25)
                            .opacity(0.5)
                    )
                
                
                    .font(.system(size: 20, weight: .medium))
                    .padding(.bottom, 10)
                
                Text("Todos te tienen miedo?")
                    .font(.system(size: 22, weight: .bold))
                
                Text("No hay problema nosotros te recomendamos esta aplicación para realizar esta actividad.")
                    .frame(width: 380,height: 50)
                    .font(.system(size: 18, weight: .medium))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                    
                
                
                
                
                
                Button("Listo!") {
                    showingAlert = true
                }
                .padding()
                .background(
                    Capsule()
                        .frame(width: 150)
                        .foregroundColor(.blue)
                )
                .tint(.white)
                .font(.system(size: 24, weight: .medium))
                .alert("Felicidades haz terminado!", isPresented: $showingAlert) {
                    Button("Continuar", role: .cancel) {
                        
                    }
                }
                
            }
            .padding(.bottom, 150)
            
            
            
            
            
            
        }
    }
}

struct ActCognitivaView_Previews: PreviewProvider {
    static var previews: some View {
        ActCognitivaView()
    }
}
