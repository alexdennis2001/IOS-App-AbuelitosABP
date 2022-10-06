//
//  MenuView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 11/09/22.
//

import SwiftUI

struct MenuView: View {
    
    @AppStorage("Menu") var tabSelection: Int = 1
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
        
    var body: some View {
        TabView(selection: $tabSelection) {
            HomeView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Actividades")
                }
                .tag(1)
            PruebasView(pruebaModel: PruebaModel())
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Pruebas")
                }
                .tag(2)
            AccountView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Cuenta")
                }
                .tag(3)
        }
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
