//
//  DetalhesdoPet.swift
//  petsApp
//
//  Created by Daniel Araujo Nobre on 24/02/25.
//

import SwiftUI

struct DetalhesDoPet: View {
    
    var pet: Pet
    
    @Binding var ultimaVacina: Date
    @Binding var proxVacina: Date
    @State private var mostrarSeletorUltiVacina = false
    @State private var mostrarSeletorProxVacina = false
    @State private var mostrarLembrete = true
    
    var body: some View {
        // Text("Detalhes do Pet: \(pet.nome)")
        
        ZStack(){
            Color("Background")
                .ignoresSafeArea()
            VStack {
                HStack(spacing: 20){
                    if let imageData = pet.imagemData, let uiImage = UIImage(data: imageData) {
                        Image(uiImage: uiImage)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    } else {
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
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
                            .cornerRadius(13)
                            
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
                            .cornerRadius(13)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(maxHeight: 170)
                
                // fim card de cima com as informações do pet
                
                VStack {
                    HStack {
                        Text("Vacinaçao")
                            .font(.title3)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 20)
                    
                    VStack {
                        HStack {
                            Text("Ultima Vacinaçao:")
                            Spacer()
                            Button(action: {
                                mostrarSeletorUltiVacina.toggle()
                            }) {
                                HStack {
                                    Text("\(dataFormatada(ultimaVacina))")
                                        .bold()
                                        .font(.title2)
                                        .foregroundStyle(Color.white)
                                }
                                .padding(5)
                                //.frame(maxWidth: .infinity)
                                .background(Color.teal)
                                .cornerRadius(8)
                            }
                            .sheet(isPresented: $mostrarSeletorUltiVacina) {
                                VStack {
                                    DatePicker("Escolha uma data", selection: $ultimaVacina, displayedComponents: .date)
                                        .datePickerStyle(GraphicalDatePickerStyle())
                                        .padding()
                                    Button("Fechar") {
                                        mostrarSeletorUltiVacina = false
                                    }
                                    .padding()
                                }
                            }
                        }
                        
                        Divider()
                        
                        HStack {
                            Text("Próxima Vacinacao:")
                            Spacer()
                            Button(action: {
                                mostrarSeletorProxVacina.toggle()
                            }) {
                                HStack {
                                    Text("\(dataFormatada(proxVacina))")
                                        .bold()
                                        .font(.title2)
                                        .foregroundStyle(Color.white)
                                }
                                .padding(5)
                                //.frame(maxWidth: .infinity)
                                .background(Color.danger)
                                .cornerRadius(8)
                            }
                            .sheet(isPresented: $mostrarSeletorProxVacina) {
                                VStack {
                                    DatePicker("Escolha uma data", selection: $proxVacina, displayedComponents: .date)
                                        .datePickerStyle(GraphicalDatePickerStyle())
                                        .padding()
                                    Button("Fechar") {
                                        mostrarSeletorProxVacina = false
                                    }
                                    .padding()
                                }
                            }
                        }
                        Divider()
                        HStack {
                            Toggle("Lembrete:", isOn: $mostrarLembrete)
                                .toggleStyle(SwitchToggleStyle(tint: .teal))
                        }
                    // aqui termina a vstack das datas (abaixo)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(13)
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
    DetalhesDoPet(
        pet: Pet(
            nome: "Zorbi",
            idade: "3",
            genero: "Masc",
            favoriteFood: "Peixe",
            ultimaVacina: Date(),
            proximaVacina: Date(),
            imagemData: UIImage(named: "Cat")?.jpegData(compressionQuality: 0.8)
        ),
        ultimaVacina: .constant(Date()),
        proxVacina: .constant(Date())
    )
}
