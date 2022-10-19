//
//  RegistroViewModel.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 18/10/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON

struct RegisterResponse: Codable {
    let access_token: String?
    let token_type: String?
    let success: Bool?
}

class RegistroViewModel: ObservableObject {
    @Published var isAuthenticated: Bool = false
    
    func postMethod(username: String, password: String) {
        let defaults = UserDefaults.standard
        
        let params: Parameters = [
            "phone": username,
            "hashed_password": password
        ]
        
        let headers: HTTPHeaders = ["accept": "application/json",
                                    "Content-Type": "application/json"]
        
        AF.request("http://172.104.198.169:8000/api/users", method: .post, parameters: params, encoding: JSONEncoding.default, headers: headers).validate(statusCode: 200 ..< 299).responseData { response in
            switch response.result {
            case .success(let token):
                do {
                    
                    guard let registerResponse = try? JSONDecoder().decode(RegisterResponse.self, from: token) else {
                        print("Error: Could not get JSON")
                        return
                    }
                    
                    //                        print(registerResponse)
                    
                    guard let token = registerResponse.access_token else {
                        print("Error: Could not get token")
                        return
                    }
                    
                    print(token)
                    defaults.setValue(token, forKey: "jsonwebtoken")
                    self.isAuthenticated = true
                    print("se cambio")
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
