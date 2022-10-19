//
//  LoginViewModel.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 17/10/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON

class LoginViewModel: ObservableObject {
    var username: String = ""
    var password: String = ""
    @Published var isAuthenticated: Bool = false

    func login() {

        let defaults = UserDefaults.standard

        Webservice().login(username: username, password: password) { result in
            switch result {
            case .success(let token):
//                print(token)
                defaults.setValue(token, forKey: "jsonwebtoken")
                DispatchQueue.main.sync {
                    self.isAuthenticated = true
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    
}
