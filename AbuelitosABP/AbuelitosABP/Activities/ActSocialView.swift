//
//  ActSocialView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 24/09/22.
//

import SwiftUI

struct ActSocialView: View {
    @State private var showingAlert = false
    @State private var scale = 1.0
    
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
                    
                    Text("Márcale o mandale un mensaje a algún familiar o amigo y cuentale algo de tí que no sepa esa persona.   ")
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
                
                HStack{
                    Image("Messenger")
                        .scaledToFit()
                        .onTapGesture() {
                            UIApplication.shared.open(URL(string: "https://apps.apple.com/mx/app/messenger/id454638411?l=en")!)
                            
                        }
                        .padding(.trailing, 60)
                    
                    
                    
                    
                    Image("Whatsapp")
                        .scaledToFit()
                        .onTapGesture() {
                            UIApplication.shared.open(URL(string: "https://apps.apple.com/mx/app/whatsapp-messenger/id310633997?l=en")!)
                        }
                }
                
                HStack{
                    Text("Marcar por Messenger")
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .fill(.white)
                                .frame(width: 180, height: 25)
                                .opacity(0.5)
                        )
                        .font(.system(size: 16, weight: .medium))
                        .padding(.trailing, 30)
                    
                    Text("Marcar por WhatsApp")
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .fill(.white)
                                .frame(width: 180, height: 25)
                                .opacity(0.5)
                        )
                        .font(.system(size: 16, weight: .medium))
                }
                .padding(.bottom, 50)
                
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

struct ActSocialView_Previews: PreviewProvider {
    static var previews: some View {
        ActSocialView()
    }
}
