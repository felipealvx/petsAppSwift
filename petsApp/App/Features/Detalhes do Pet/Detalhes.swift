//
//  DetalhesdoPet.swift
//  petsApp
//
//  Created by Daniel Araujo Nobre on 24/02/25.
//

import SwiftUI

struct DetalhesDoPet: View {
    var pet: Pet
    var body: some View {
        Text("Detalhes do Pet: \(pet.nome)")
    }
}

#Preview {
    DetalhesDoPet(pet: Pet(nome: "Stub", idade: 0, genero: "Sim", ultimaVacina: "Nao consta", proximaVacina: "Nao consta", nomeDaImage: "Nao consta"))
}
