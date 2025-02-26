//
//  PetList.swift
//  petsApp
//
//  Created by Caio de Almeida Pessoa on 06/02/25.
//

import SwiftUI

struct PetList: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 18) {
                PetCardView(pet: Pet(nome: "Zorbi", idade: 1, genero: "Macho", ultimaVacina: "22-01-25", proximaVacina: "26-06-25", nomeDaImage: "Cat"))
                PetCardView(pet: Pet(nome: "Pipoca", idade: 2, genero: "Femea", ultimaVacina: "02-01-24", proximaVacina: "21-02-25", nomeDaImage: "Dog"))
                
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    PetList()
}
