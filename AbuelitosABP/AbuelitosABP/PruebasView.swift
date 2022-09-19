//
//  PruebasView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 12/09/22.
//

import SwiftUI

struct PruebasView: View {
    let azulAbuelos = UIColor(red: 0.85, green: 0.93, blue: 0.94, alpha: 1.00)
    var body: some View {
        ZStack(alignment: .top) {
            Color(azulAbuelos)
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Image("logo_abuelitos")
                    .scaledToFit()
                    .padding(.bottom, 0)
                Text("Pruebas de Tamizaje")
                    .font(.system(size: 28, weight: .semibold))
                    .padding(.bottom, 5)
                
                
                    
                    ScrollView {
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Cognitiva")
                                .font(.system(size: 26, weight: .semibold))
                            Text("TIMED UP AND GO")
                                .foregroundColor(.black)
                                .font(.system(size: 20, weight: .semibold))
                                .frame(width: 320, height: 100)
                                .background(.green)
                                .cornerRadius(30)
                            Text("Prueba 2")
                                .foregroundColor(.black)
                                .font(.system(size: 20, weight: .semibold))
                                .frame(width: 320, height: 100)
                                .background(.yellow)
                                .cornerRadius(30)
                        }
                        
                    }
                    .frame(width: 350)
                    
                
               
                
                
            }
            .padding(.leading,20)
            
        }
    }
}

struct PruebasView_Previews: PreviewProvider {
    static var previews: some View {
        PruebasView()
    }
}
