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
            VStack(spacing:18) {
                CardZorbi()
                    .frame(height: 190)
                CardZorbi()
                    .frame(height: 190)
                CardZorbi()
                    .frame(height: 190)
                CardZorbi()
                    .frame(height: 190)
                CardZorbi()
                    .frame(height: 190)
            }
        }
    }
}

#Preview {
    PetList()
}
