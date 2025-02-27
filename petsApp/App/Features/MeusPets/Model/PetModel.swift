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
    let idade: Int
    let genero: String
    let ultimaVacina: String
    let proximaVacina: String
    let nomeDaImage: String
    
    var simboloDeGenero: String {
        return genero == "Macho" ? "🐾" : "🐰"
    }
}
