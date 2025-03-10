//
//  MeusPetsView.swift
//  petsApp
//
//  Created by iredefbmac_19 on 05/02/25.
//

import SwiftUI

struct MeusPetsView: View {
    
    @State private var isSheetPresented = false
    @State var pets: [Pet] = [
        Pet(nome: "Zorbi", idade: 1, genero: "Macho", ultimaVacina: "22-01-25", proximaVacina: "26-06-25", nomeDaImage: "Cat"), Pet(nome: "Pipoca", idade: 2, genero: "Femea", ultimaVacina: "02-01-24", proximaVacina: "21-02-25", nomeDaImage: "Dog")
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                VStack {
                    //                    Input()
                    PetList(pets: $pets)
                        .padding()
                    
                    //                    ButtonAdd()
                    //                        .padding()
                    
                    Button {
                        isSheetPresented.toggle()
                    } label: {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.teal)
                            .frame(height: 52)
                            .overlay{
                                HStack(){
                                    Image(systemName: "plus")
                                        .foregroundColor(Color.white)
                                    Text("Adicionar Pet")
                                        .foregroundColor(Color.white)
                                }
                                .bold()
                                .font(.system(size: 18))
                                
                            }
                    }
                    .padding()
                    .sheet(isPresented: $isSheetPresented) {
                        AdicionarPet(pets: $pets, isSheetPresented: $isSheetPresented)
                            .presentationDetents([
                                .fraction(0.7),
                                .height(600)
                            ])
                    }
                    
                }
                
                
            }
            .navigationTitle("Meus Pets")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    MeusPetsView()
}
