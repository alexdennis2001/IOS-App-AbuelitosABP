//
//  KeepItUpView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 11/10/22.
//

import SwiftUI

struct KeepItUpView: View {
    
    @AppStorage("Page") var currentPage: Page?
    @AppStorage("Menu") var tabSelection: Int?
    @AppStorage("IdPrueba") var idPrueba: Int?
    @AppStorage("ScorePrueba1") var scorePrueba1: Double?
    @AppStorage("ScorePrueba2") var scorePrueba2: Double?
    @AppStorage("ScorePrueba3") var scorePrueba3: Double?
    @AppStorage("ScorePrueba4") var scorePrueba4: Double?
    @AppStorage("ScorePrueba5") var scorePrueba5: Double?
    @AppStorage("ScorePrueba6") var scorePrueba6: Double?
    
    var body: some View {
        ZStack(alignment: .center){
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack(spacing: 10){
                Text("Haz terminado la prueba!")
                    .font(.system(size: 30, weight: .semibold))
                    .frame(width: 400)
                
                HStack{
                    Text("Estatus:")
                        .font(.system(size: 28, weight: .medium))
                    
                    Text("Reprobado")
                        .font(.system(size: 28, weight: .medium))
                        .foregroundColor(.red)
                    
                    if(idPrueba == 1){
                        Text("\(scorePrueba1!)")
                    }
                    else if(idPrueba == 2){
                        Text("\(scorePrueba2!)")
                    }
                    else if(idPrueba == 3){
                        Text("\(scorePrueba3!)")
                    }
                    else if(idPrueba == 4){
                        Text("\(scorePrueba4!)")
                    }
                    else if(idPrueba == 5){
                        Text("\(scorePrueba5!)")
                    }
                    else if(idPrueba == 6){
                        Text("\(scorePrueba6!)")
                    }
                        
                }
                
                Image("upset")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 420)
                
                
                
                Button {
                    tabSelection = 2
                    currentPage = .menu
                } label: {
                    Text("Continuar")
                        .kerning(2)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 50)
                        .background(Color("azulClaroButton"))
                        .clipShape(Capsule())
                        .foregroundColor(.black)
                        .font(.system(size: 24, weight: .medium))
                }

            }
            
           
        }
        
    }
}

struct KeepItUpView_Previews: PreviewProvider {
    static var previews: some View {
        KeepItUpView()
    }
}
