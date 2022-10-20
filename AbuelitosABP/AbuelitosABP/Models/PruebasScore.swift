//
//  PruebaScoreModel.swift
//  AbuelitosABP
//
//  Created by Arturo on 19/10/22.
//

import SwiftUI

struct PruebasScore: Codable {
    let test_id: Int
    let score: Double?
    let questions_answers: [Questions_Answers]
    
    struct Questions_Answers: Codable{
        let question_id: Int
        let answer: Double
    }
}




