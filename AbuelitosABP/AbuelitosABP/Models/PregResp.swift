//
//  PregResp.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 28/09/22.
//

import SwiftUI

struct PregResp: Identifiable {
    var id: Int
    var pregunta: String
    var respuesta: [Respuesta]
    
}
