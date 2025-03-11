//
//  PetList.swift
//  petsApp
//
//  Created by Caio de Almeida Pessoa on 06/02/25.
//

import SwiftUI

struct PetList: View {
    @Binding var pets: [Pet]
    var body: some View {
        ScrollView {
            VStack(spacing: 18) {
                ForEach(pets) { pet in
                    PetCardView(pet: pet)
                }
                
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    PetList(pets: .constant([Pet(nome: "Zorbi", idade: "2", genero: "Macho", favoriteFood: "Peixe", ultimaVacina: "22-01-25", proximaVacina: "26-06-25", nomeDaImage: "Cat"), Pet(nome: "Pipoca", idade: "4", genero: "Femea", favoriteFood: "Peixe-assado", ultimaVacina: "02-01-24", proximaVacina: "21-02-25", nomeDaImage: "Dog")]))
}
