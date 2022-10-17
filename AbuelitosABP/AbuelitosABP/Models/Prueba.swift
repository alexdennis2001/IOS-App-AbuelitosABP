//
//  Prueba.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 28/09/22.
//

import SwiftUI

class Prueba: ObservableObject, Identifiable {
    var id: Int
    var nombre: String
    var preg_resp: [PregResp]
    var rangosScore: [[Double]]
    var orden: Int
    var categorias: [String]
    var scoreFinal: Double
    
    init(id: Int, nombre: String, preg_resp: [PregResp], rangosScore: [[Double]], orden: Int, categorias: [String], scoreFinal: Double){
        self.id = id
        self.nombre = nombre
        self.preg_resp = preg_resp
        self.rangosScore = rangosScore
        self.orden = orden
        self.categorias = categorias
        self.scoreFinal = scoreFinal
    }
}
