//
//  MeusPetsView.swift
//  petsApp
//
//  Created by iredefbmac_19 on 05/02/25.
//

import SwiftUI

struct MeusPetsView: View {
    
    @State private var isSheetPresented = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                VStack {
                    //                    Input()
                    PetList()
                        .padding()
                    
                    //                    ButtonAdd()
                    //                        .padding()
                    
                    Button {
                        isSheetPresented.toggle()
                    } label: {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color("BluePrimary"))
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
                    .padding(.horizontal)
                    .sheet(isPresented: $isSheetPresented) {
                        AdicionarPet()
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
