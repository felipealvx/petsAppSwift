//
//  PetModel.swift
//  petsApp
//
//  Created by Daniel Araujo Nobre on 14/02/25.
//

import Foundation

struct Pet: Identifiable {
    let id = UUID()
    let nome: String
    let idade: String
    let genero: String
    let favoriteFood: String
    let ultimaVacina: Date
    let proximaVacina: Date
    let imagemData: Data?
    
    var simboloDeGenero: String {
        return genero == "Macho" ? "🐾" : "🐰"
    }
}
