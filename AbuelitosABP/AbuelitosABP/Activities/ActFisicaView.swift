//
//  ActFisicaView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 14/09/22.
//

import SwiftUI

struct ActFisicaView: View {
    @StateObject private var vm = ViewModel()
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack{
                Text("Empieza tu actividad del día!")
                    .font(.system(size: 28, weight: .semibold))
                    .padding(.bottom, 20)

                VStack{
                    Text("Actividad:")
                        .font(.system(size: 24, weight: .medium))
                        .offset(y: 10)

                    Text("Sal \(Int(vm.minutes)) minutos a caminar en algun lugar exterior a tu alcanze.")
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
                
                Text("\(vm.time)")
                    .font(.system(size: 70, weight: .ultraLight))
                    .padding()
                    .frame(width: 250)
                    .background(
                        Circle()
                            .fill(.white)
                            .opacity(0.3)
                            .frame(width: 300, height: 300)
                    )
                    .frame(width: 320, height: 320)
                    .alert("Felicidades haz terminado!", isPresented: $vm.showingAlert){
                        Button("Continuar", role: .cancel){
                            // Code
                        }
                    }
                
                Slider(value: $vm.minutes, in: 5...20, step: 1)
                    .padding()
                    .frame(width: 250)
                    .disabled(vm.isActive)
                    .animation(.easeInOut, value: vm.minutes)
                
                HStack(spacing: 50){
                    if vm.isActive {
                        Button("Reiniciar",action: vm.reset)
                            .padding()
                            .background(
                                Capsule()
                                    .frame(width: 150)
                                    .foregroundColor(.gray)
                            )
                            .tint(.white)
                            .font(.system(size: 24, weight: .medium))
                    }
                    
                    Button("Empezar"){
                        vm.start(minutes: vm.minutes)
                    }
                    .disabled(vm.isActive)
                    .padding()
                    .background(
                        Capsule()
                            .frame(width: 150)
                            .foregroundColor(.blue)
                    )
                    .tint(.white)
                    .font(.system(size: 24, weight: .medium))
                    
                    
                }
                .frame(width: 350)
            }
            .onReceive(timer){_ in
                vm.updateCountdown()
            }
            .padding(.bottom, 70)
            
        }
    }
}

struct ActFisicaView_Previews: PreviewProvider {
    static var previews: some View {
        ActFisicaView()
    }
}
