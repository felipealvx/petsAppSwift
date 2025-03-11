//
//  DetalhesdoPet.swift
//  petsApp
//
//  Created by Daniel Araujo Nobre on 24/02/25.
//

import SwiftUI

struct DetalhesDoPet: View {
    
    var pet: Pet
    
    @State private var dataSelecionada = Date()
    @State private var mostrarSeletorData = false
    
    var body: some View {
        // Text("Detalhes do Pet: \(pet.nome)")
        
        ZStack(){
            Color("Background")
                .ignoresSafeArea()
            VStack {
                HStack(spacing: 20){
                    Image("Cat")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 125, height: 170)
                        .cornerRadius(4)
                    VStack(spacing: 10) {
                        Text(pet.nome)
                            .font(.title)
                            .foregroundStyle(.teal)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer()
                        
                        VStack {
                            HStack{
                                Image(systemName: "calendar")
                                Text("Idade:")
                                    .bold()
                                Text(pet.idade)
                                // Text(pet.idade)
                            }
                            .padding(5)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.white)
                            .cornerRadius(10)
                            
                            VStack {
                                HStack {
                                    Image(systemName: "fork.knife")
                                    Text("Comida favorita:")
                                        .bold()
                                }
                                .frame(maxWidth: .infinity ,alignment: .leading)
                                Text(pet.favoriteFood)
                                    .foregroundStyle(Color.gray)
                                    .frame(maxWidth: .infinity ,alignment: .leading)
                            }
                            .padding(5)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.white)
                            .cornerRadius(10)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(maxHeight: 170)
                .background(Color.yellow)
                
                VStack {
                    Text("Vacinaçao")
                        .font(.title3)
                    VStack {
                        HStack {
                            Text("Ultima Vacinaçao:")
                            Spacer()
                            Button(action: {
                                mostrarSeletorData.toggle()
                            }) {
                                HStack {
                                    Text("\(dataFormatada(dataSelecionada))")
                                        .bold()
                                        .font(.title2)
                                        .foregroundStyle(Color.white)
                                }
                                .padding(5)
                                //.frame(maxWidth: .infinity)
                                .background(Color.danger)
                                .cornerRadius(8)
                            }
                            .sheet(isPresented: $mostrarSeletorData) {
                                VStack {
                                    DatePicker("Escolha uma data", selection: $dataSelecionada, displayedComponents: .date)
                                        .datePickerStyle(GraphicalDatePickerStyle())
                                        .padding()
                                    Button("Fechar") {
                                        mostrarSeletorData = false
                                    }
                                    .padding()
                                }
                            }
                        }
                        padding(.horizontal)
                        
                        Divider()
                        
                        HStack {
                            Text("Próxima Vacinacao:")
                            Spacer()
                            Button(action: {
                                mostrarSeletorData.toggle()
                            }) {
                                HStack {
                                    Text("\(dataFormatada(dataSelecionada))")
                                        .bold()
                                        .font(.title2)
                                        .foregroundStyle(Color.white)
                                }
                                .padding(5)
                                //.frame(maxWidth: .infinity)
                                .background(Color.danger)
                                .cornerRadius(8)
                            }
                            .sheet(isPresented: $mostrarSeletorData) {
                                VStack {
                                    DatePicker("Escolha uma data", selection: $dataSelecionada, displayedComponents: .date)
                                        .datePickerStyle(GraphicalDatePickerStyle())
                                        .padding()
                                    Button("Fechar") {
                                        mostrarSeletorData = false
                                    }
                                    .padding()
                                }
                            }
                        }
                    // aqui termina a vstack das datas (abaixo)
                    }
                    .background(Color.white)
                }
            }
            .padding()
        }
    }
    
    private func dataFormatada(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
}




#Preview {
    DetalhesDoPet(pet: Pet(nome: "TIQUINHO", idade: "3", genero: "Sim", favoriteFood: "Peixe", ultimaVacina: "Nao consta", proximaVacina: "Nao consta", nomeDaImage: "Nao consta"))
}
