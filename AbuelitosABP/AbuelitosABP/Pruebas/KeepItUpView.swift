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
    @AppStorage("Categoria") var categoriaPrueba: String?
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
                }
                .padding()
                
                VStack{
                    if(idPrueba == 1){
                        Text(String(format: "%.1f", scorePrueba1!))
                            .scoreStyle(backgroundColor: Color.red)
                    }
                    else if(idPrueba == 2){
                        Text(String(format: "%.1f", scorePrueba2!))
                            .scoreStyle(backgroundColor: Color.red)
                    }
                    else if(idPrueba == 3){
                        Text(String(format: "%.1f", scorePrueba3!))
                            .scoreStyle(backgroundColor: Color.red)
                    }
                    else if(idPrueba == 4){
                        Text(String(format: "%.1f", scorePrueba4!))
                            .scoreStyle(backgroundColor: Color.red)
                    }
                    else if(idPrueba == 5){
                        Text(String(format: "%.1f", scorePrueba5!))
                            .scoreStyle(backgroundColor: Color.red)
                    }
                    else if(idPrueba == 6){
                        Text(String(format: "%.1f", scorePrueba6!))
                            .scoreStyle(backgroundColor: Color.red)
                    }
                    
                    if let unwrappedCategoria = categoriaPrueba{
                        Text(unwrappedCategoria)
                            .font(.system(size: 28, weight: .bold))
                    }

                }
                .padding()
                
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
