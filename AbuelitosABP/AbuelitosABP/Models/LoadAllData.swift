//
//  LoadData.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 19/10/22.
//

import SwiftUI

struct LoadAllData: Codable {
    let first_name: String
    let last_name: String
    let second_last_name: String
    let gender: String
    let birth_date: String
    let height: Double
    let weight: Double
    let blood_type: String
    let id: Int
    let user: User
    let patient_info: Patient
    
    struct User: Codable {
        let email: String?
        let phone: String
        let role: Int
    }
    
    struct Patient: Codable {
        let estado: String
        let municipio: String
        let decanato: String
        let parroquia: String
        let zona: String
        let direccion: String
    }
}




