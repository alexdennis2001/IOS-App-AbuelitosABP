//
//  Category.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 14/10/22.
//

import SwiftUI

struct Satisfaction: Identifiable {
    var id: Int
    var rating: Int
    var description: String
    var image: String
}

extension Satisfaction {
    static let satisfactions = [
    Satisfaction(id: 0, rating: 1, description: "Muy triste", image: "1"),
    Satisfaction(id: 1, rating: 2, description: "Algo triste", image: "2"),
    Satisfaction(id: 2, rating: 3, description: "Neutral", image: "3"),
    Satisfaction(id: 3, rating: 4, description: "Algo feliz", image: "4"),
    Satisfaction(id: 4, rating: 5, description: "Super feliz", image: "5")
    ]
}
