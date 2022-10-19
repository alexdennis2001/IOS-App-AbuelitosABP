//
//  RegistroViewModel.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 18/10/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON

struct PatientInfo2: Codable {
    let estado: String?
    let municipio: String?
    let decanato: String?
    let parroquia: String?
    let zona: String?
    let direccion: String?
}

class PatientInfo2Model: ObservableObject {
    
    func postMethod(estado: String, municipio: String, decanato: String, parroquia: String, zona: String, direccion: String) {
        
        let token = UserDefaults.standard.string(forKey: "jsonwebtoken")
        
        let params: Parameters = [
            "estado": estado,
            "municipio": municipio,
            "decanato": decanato,
            "parroquia": parroquia,
            "zona": zona,
            "direccion": direccion
        ]
        
        let headers: HTTPHeaders = ["accept": "application/json",
                                    "Authorization": "Bearer " + token!,
                                    "Content-Type": "application/json"]
        
        AF.request("http://172.104.198.169:8000/api/patients/app/info", method: .post, parameters: params, encoding: JSONEncoding.default, headers: headers).validate(statusCode: 200 ..< 299).responseData { response in
            switch response.result {
            case .success(let info):
                do {
                    
                    guard let patientInfo = try? JSONDecoder().decode(PatientInfo2.self, from: info) else {
                        print("Error: Could not get JSON")
                        return
                    }
                    
                    //                        print(registerResponse)
                    
                    guard let estado = patientInfo.estado else {
                        print("Error: Could not get first name")
                        return
                    }
                    
                    print(estado)
                    
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
