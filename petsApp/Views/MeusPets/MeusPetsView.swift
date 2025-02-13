//
//  MeusPetsView.swift
//  petsApp
//
//  Created by iredefbmac_19 on 05/02/25.
//

import SwiftUI

struct MeusPetsView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                VStack(){
                    Input()
                    PetList()
                        .padding()
                    ButtonAdd()
                        .padding()
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
