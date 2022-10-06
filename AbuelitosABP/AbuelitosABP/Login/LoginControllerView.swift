//
//  LoginControllerView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 23/09/22.
//

import SwiftUI

struct LoginControllerView: View {
    @AppStorage("Page") var currentPage: Page = .login
    
    
    var body: some View {
        VStack{
            switch currentPage {
            case .login:
                LoginView()
            case .menu:
                MenuView()
            case .congrats:
                CongratulationsView()
            case .formularioPersonal:
                FormularioDatosPersonalesView()
            case .formularioUbicacion:
                FormularioUbicacionView()
            case .recuperarContrasena:
                RecuperarContrasena2View()
            }
            
        }
    }
}

struct LoginControllerView_Previews: PreviewProvider {
    static var previews: some View {
        LoginControllerView()
    }
}
