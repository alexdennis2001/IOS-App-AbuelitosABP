//
//  MenuView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 11/09/22.
//

import SwiftUI

struct MenuView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
        
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Actividades")
                }
            PruebasView(pruebaModel: PruebaModel())
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Pruebas")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Cuenta")
                }
        }
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
