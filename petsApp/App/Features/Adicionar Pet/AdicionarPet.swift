//
//  AdicionarPet.swift
//  petsApp
//
//  Created by Daniel Araujo Nobre on 24/02/25.
//

import SwiftUI
import PhotosUI

struct AdicionarPet: View {
    @Binding var pets: [Pet]
    @Binding var isSheetPresented: Bool
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImage: UIImage? = nil
    @State private var petName: String = ""
    @State private var idade: String = ""
    @State private var favoriteFood: String = ""
    var body: some View {
        VStack (spacing: 10) {
            VStack(alignment: .leading) {
                Text("Foto do Pet")
                HStack {
                    PhotosPicker(selection: $selectedItem, matching: .images) {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.teal)
                            .frame(height: 52)
                            .overlay {
                            HStack {
                                Text("Adicionar Imagem")
                                    .foregroundColor(Color.white)
                                Image(systemName: "photo.badge.plus")
                                    .foregroundColor(Color.white)
                            }
                            .bold()
                            .font(.system(size: 18))
                        }
                    }
                    .onChange(of: selectedItem) {
                        newItem in
                        Task {
                            if let data = try? await newItem?.loadTransferable(type: Data.self),
                            let uiImage = UIImage(data: data) {
                                selectedImage = uiImage
                            }
                        }
                    }
                }
            }
            
            InputPetModal(inputValue: $petName, input: InputPet(placeholderInput: "Nome do pet...", labelInput: "Nome"))
            InputPetModal(inputValue: $idade, input: InputPet(placeholderInput: "Idade do pet...", labelInput: "Idade"))
            InputPetModal(inputValue: $favoriteFood, input: InputPet(placeholderInput: "Comida favorita do pet...", labelInput: "Comida Favorita"))
            
            Button {
                let imagemData = selectedImage?.jpegData(compressionQuality: 0.8)
                pets.append(Pet(nome: petName, idade: idade, genero: "Nao Consta", favoriteFood: favoriteFood, ultimaVacina: Date(), proximaVacina: Date(), imagemData: imagemData))
                isSheetPresented.toggle()
            } label: {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.teal)
                    .frame(height: 60)
                    .overlay{
                        HStack(){
                            Text("Cadastrar Pet")
                                .foregroundColor(Color.white)
                                .font(.title)
                        }
                        .bold()
                        .font(.system(size: 18))
                        
                    }
            }.padding(.vertical)
            
        }
        .navigationTitle("Cadastrar Pet")
        .navigationBarTitleDisplayMode(.automatic)
        .padding()
    }
}

#Preview {
    AdicionarPet(pets: .constant([]), isSheetPresented: .constant(true))
}
