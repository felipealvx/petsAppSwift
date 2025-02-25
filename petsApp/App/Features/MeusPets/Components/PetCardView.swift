//
//  PetCardView.swift
//  petsApp
//
//  Created by Daniel Araujo Nobre on 14/02/25.
//

import SwiftUI

struct PetCardView: View {
    let pet: Pet
    
    var body: some View {
        
        VStack {
            HStack {
                Image(pet.nomeDaImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 115, height: 115)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text(pet.nome)
                            .font(.headline)
                            .foregroundStyle(.teal)
                        Image(pet.genero)
                        Spacer()
                        Text("\(pet.idade) anos")
                            .bold()
                    }
                    VStack(alignment: .leading) {
                        textInline(leftText: "Última Vacina:", rightText: pet.proximaVacina)
                            .padding(5)
                        Divider()
                        textInline(leftText: "Próxima Vacina:", rightText: pet.proximaVacina)
                            .padding(5)
                    }
                    .frame(maxWidth: .infinity)
                    .font(.subheadline)
                    .foregroundStyle(.black)
                    .padding(.vertical, 8)
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(8)
                }
            }
            .padding(8)
            Button {
                //colocar aqui um navigation linnk para os detalhe do pet, ai voce passa os detalhes do pet, pet: pet
            } label: {
                HStack {
                    Text("Ver mais dados")
                        .padding()
                    Image(systemName: "chevron.right")
                }
                .foregroundStyle(.white)
                .bold()
                .frame(maxWidth: .infinity)
                .background(.teal)
                    .clipShape(
                        UnevenRoundedRectangle(
                            cornerRadii: .init(
                                topLeading: 0,
                                bottomLeading: 10,
                                bottomTrailing: 10,
                                topTrailing: 0
                            )
                        )
                    )
            }

        }
        .padding(.top, 10)
        .background(.white)
        .cornerRadius(10)
    }
    
    @ViewBuilder func textInline(leftText: String, rightText: String) -> some View {
        HStack {
            Text(leftText)
                .bold()
                Spacer()
            Text(rightText)
                .fontWeight(.light)
        }
        .font(.system(size: 14))
    }
}

#Preview {
    PetCardView(pet: Pet(
            nome: "ZORBI",
            idade: 2,
            genero: "Male",
            ultimaVacina: "22-05-25",
            proximaVacina: "22-05-25",
            nomeDaImage: "Cat"
        ))
        .padding()
}
