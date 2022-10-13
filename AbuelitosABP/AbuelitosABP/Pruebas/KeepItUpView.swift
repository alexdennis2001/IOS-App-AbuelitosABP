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
