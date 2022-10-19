//
//  Webservice.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 17/10/22.
//

import Foundation

enum AuthenticationError: Error {
    case invalidCredentials
    case custom(errorMessage: String)
}

struct LoginRequestBody: Codable {
    let username: String
    let password: String
}

struct LoginResponse: Codable {
    let access_token: String?
    let token_type: String?
    let success: Bool?
}

class Webservice {
    
    func login(username: String, password: String, completion: @escaping (Result<String, AuthenticationError>) -> Void) {
        
        guard let url = URL(string: "http://172.104.198.169:8000/api/token") else {
            completion(.failure(.custom(errorMessage: "URL is not correct")))
            return
        }
        
        var request = URLRequest(url: url)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let postString = "grant_type=&username=\(username)&password=\(password)&scope=&client_id=&client_secret="
        request.httpBody = postString.data(using: .utf8)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(.custom(errorMessage: "No data")))
                return
            }

            guard let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data) else {
                completion(.failure(.invalidCredentials))
                return
            }

            guard let token = loginResponse.access_token else {
                completion(.failure(.invalidCredentials))
                return
            }
            
            completion(.success(token))
            
        }
        task.resume()
        
        
        
        
        
    }
}

