//
//  RegistroViewModel.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 18/10/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON

struct PatientInfo: Codable {
    let first_name: String?
    let last_name: String?
    let second_last_name: String?
    let gender: Int?
    let birth_date: String?
    let height: Double?
    let weight: Double?
    let blood_type: Int?
}

class PatientInfoModel: ObservableObject {
    
    func postMethod(first_name: String, last_name: String, second_last_name: String, gender: Int, birth_date: String, height: Double, weight: Double, blood_type: Int) {
        
        let token = UserDefaults.standard.string(forKey: "jsonwebtoken")
        
        let params: Parameters = [
            "first_name": first_name,
            "last_name": last_name,
            "second_last_name": second_last_name,
            "gender": gender,
            "birth_date": birth_date,
            "height": height,
            "weight": weight,
            "blood_type": blood_type
        ]
        
        let headers: HTTPHeaders = ["accept": "application/json",
                                    "Authorization": "Bearer " + token!,
                                    "Content-Type": "application/json"]
        
        AF.request("http://172.104.198.169:8000/api/patients/app", method: .post, parameters: params, encoding: JSONEncoding.default, headers: headers).validate(statusCode: 200 ..< 299).responseData { response in
            switch response.result {
            case .success(let info):
                do {
                    
                    guard let patientInfo = try? JSONDecoder().decode(PatientInfo.self, from: info) else {
                        print("Error: Could not get JSON")
                        return
                    }
                    
                    //                        print(registerResponse)
                    
                    guard let firstName = patientInfo.first_name else {
                        print("Error: Could not get first name")
                        return
                    }
                    
                    print(firstName)
                    
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
