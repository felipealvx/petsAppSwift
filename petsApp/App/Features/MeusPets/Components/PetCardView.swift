//
//  PetCardView.swift
//  petsApp
//
//  Created by Daniel Araujo Nobre on 14/02/25.
//

import SwiftUI

struct PetCardView: View {
    let pet: Pet
    
    @State private var ultimaVacina: Date
    @State private var proxVacina: Date
    
    init(pet: Pet) {
        self.pet = pet
        _ultimaVacina = State(initialValue: pet.ultimaVacina)
        _proxVacina = State(initialValue: pet.proximaVacina)
    }
    
    var body: some View {
        
        VStack {
            HStack {
                if let imageData = pet.imagemData, let uiImage = UIImage(data: imageData){
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 120)
                        .clipShape(Circle())
                } else {
                    Image(systemName: "Foto")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 120)
                        .clipShape(Circle())
                }
                
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
                        textInline(leftText: "Última Vacina:", rightText: dataFormatada(ultimaVacina))
                            .padding(5)
                        Divider()
                        textInline(leftText: "Próxima Vacina:", rightText: dataFormatada(proxVacina))
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
            NavigationLink {
                DetalhesDoPet(pet: pet, ultimaVacina: $ultimaVacina, proxVacina: $proxVacina)
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
    
    private func dataFormatada(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
}

#Preview {
    NavigationStack {
        
        PetCardView(pet: Pet(
            nome: "ZORBI",
            idade: "2",
            genero: "Male",
            favoriteFood: "Peixe",
            ultimaVacina: Date(),
            proximaVacina: Date(),
            imagemData: UIImage(named: "Cat")?.jpegData(compressionQuality: 0.8)
        ))
        .padding()
    }
}
